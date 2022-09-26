<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658467020199" id="c0a83801821d130e818224566da7055e" language="beanshell" modified="1663607070204" name="Presentation Task 4 - specify assigned and detected roles">
  <Source>
    
    import sailpoint.object.Identity;
  
  //T4: Write a rule to return a map of users and role. Return map should have key as user, and value  as list of assigned roles.
  
  
  List identityList = context.getObjects(Identity.class);
  
  Map userAndDetectedRolesMap = new HashMap();
  
  for(Identity identity:identityList) 
  {
    List allDetectedRoles = new ArrayList();
    
    //List obj to loop
    List bundleListDetectedRolesObj = identity.getDetectedRoles();
    
    for(Bundle bundle:bundleListDetectedRolesObj)
    {
      allDetectedRoles.add(bundle.getName());
    }
    
    if(allDetectedRoles.isEmpty())
    {
      /*
      	Reason of comment: Ignoring the idenity who has not been assigned roles yet
        Can uncommment if need to add the below string message 
      */
      //allAvailableRoles.add("No roles assigned yet");
    }
    else 
    {
      userAndDetectedRolesMap.put(identity.getName(), allDetectedRoles);
    }
  }
  
  Map userAndAssignedRolesMap = new HashMap();
  
  for(Identity identity:identityList) 
  {
    List allAssignedRoles = new ArrayList();
    
    //List obj to loop
    List bundleListAssignedRolesObj = identity.getAssignedRoles();
    
    for(Bundle bundle:bundleListAssignedRolesObj)
    {
      allAssignedRoles.add(bundle.getName());
    }
    
    if(allAssignedRoles.isEmpty())
    {
      /*
      	Reason of comment: Ignoring the idenity who has not been assigned roles yet
        Can uncommment if need to add the below string message 
      */
      //allAvailableRoles.add("No roles assigned yet");
    }
    else 
    {
      userAndAssignedRolesMap.put(identity.getName(), allAssignedRoles);
    }
  }
  return "\n\nAssigned Roles\n\n" + userAndAssignedRolesMap + "\n\n" + "------------------------------------------------------------\n\n" + "Detected Roles\n\n" + userAndDetectedRolesMap + "\n\n";
  
  </Source>
</Rule>
