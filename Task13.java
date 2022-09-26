<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658682533353" id="c0a83801821d130e8182312ee5e90a88" language="beanshell" modified="1663616373033" name="Presentation Task 13">
  <Source>
  
	//T13: Write a rule to return all the roles and their corresponding owner.
  
  //All the roles from Setup => Roles are in Bundle.class in the form of, list of, Role object 
  
  import sailpoint.object.Identity;
  import sailpoint.object.Bundle;
  
  List rolesBundleObjects = context.getObjects(Bundle.class);
  
  Map roleAndOwnerMap = new HashMap();
  
  List testList = new ArrayList();
  
  for(Bundle bundle:rolesBundleObjects)
  {
    roleAndOwnerMap.put(bundle.getName(), bundle.getOwner().getName());
  }
  
  return roleAndOwnerMap; 
 
    
  </Source>
</Rule>
