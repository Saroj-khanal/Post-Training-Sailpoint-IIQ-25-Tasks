<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658682624190" id="c0a83801821d130e8182313048be0a90" language="beanshell" modified="1663616669770" name="Presentation Task 14">
  <Source>
  
  //T14: Write a rule to return one business role and its IT roles.
  
  import sailpoint.object.Identity;
  import sailpoint.object.Bundle;
  
  //All the roles from Setup => Roles are in Bundle.class in the form of, list of, Role object 
  //Roles objects are in Bundle.class => On debug, put Bundle and see all the roles
  //Inside Roles object, in type attributes, we can see whether its business or it role 
  //Inisde business role we have it role in reference section 
  
  List bundleItRolesObjects = new ArrayList();
  List nameItRoles = new ArrayList();
  Map businessItRolesMap = new HashMap();
  
  List allRoles = context.getObjects(Bundle.class);
  
  for(Bundle bundle:allRoles) //looping through all business and it roles 
  {
    String roleType = bundle.getType(); //either business or it
    
    if(roleType.equals("business"))
    {
    	String businessRoleName = bundle.getName();
      
    	bundleItRolesObjects = bundle.getRequirements();
      
      for(Bundle bundle:bundleItRolesObjects) //looping through it roles objects
      {
        nameItRoles.add(bundle.getName());
      }
      businessItRolesMap.put(businessRoleName, nameItRoles);
      return "\n\n Business Role and its IT Roles: \n" + businessItRolesMap + "\n\n";
    }
  }
  
    
  </Source>
</Rule>
