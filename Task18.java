<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659822517394" id="c0a8380182731e4481827521ac9201e0" language="beanshell" modified="1663616883503" name="Presentation Task 18">
  <Source>
  
	//T18: Write a rule to return all requestable entitlement in IIQ
  
  import sailpoint.object.ManagedAttribute;
	
  //RETURN ENTITLEMENT FROM DOOR MANAGEMENT SYSTEM 
  
  List entitlementsList = new ArrayList();
  List managedAttributeList = context.getObjects(ManagedAttribute.class);
  //return managedAttributeList; //it returns the list of objects of all managed attributes available in the SP
  
  //loop through all the objects of managed attributes and find Door Management System app and add the name of entitlements into the list
  for(ManagedAttribute managedAttribute:managedAttributeList) 
  {
    if(managedAttribute.getApplication().getName().equals("Door Management System"))
    {
      entitlementsList.add(managedAttribute.getValue());
    }
  }
  
  return "\n\nRequestable Entitlements:  " + entitlementsList + "\n\n";
    
  </Source>
</Rule>
