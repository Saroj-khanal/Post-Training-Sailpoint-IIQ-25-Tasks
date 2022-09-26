<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658448275618" id="c0a83801821d130e8182233868a20416" language="beanshell" modified="1663607020372" name="Presentation Task 4 - do not specify assigned and detected roles">
  <Source>

  //T4: Write a rule to return a map of users and role. Return map should have key as user, and value  as list of assigned roles.

  import sailpoint.object.Identity;

  //test start  
  Identity identity = context.getObject(Identity.class, "FBJ3"); 
  //return identity.getAssignedRoles(); //for test
  List roleList = new ArrayList();
  //List roles = identity.getAssignedRoles();
  List roles = identity.getDetectedRoles();
  //return roles;
  for(Bundle bundle:roles)
  {
    roleList.add(bundle.getName());
  }
  //return "Roles: " + roleList;
  //test end


  //start - do not specity assigned and detected roles 
  Map userAndRoleMap = new HashMap();
  List identityList = context.getObjects(Identity.class);
  //return identityList;

  for(Identity identity:identityList) //looping through all the identity 
  {
    //testList.add(identity.getName()); //testing to see if users comes up
    //put identiy and list of role inside map as key and value respectively

    List allAvailableRoles = new ArrayList();
    List bundleListDetectedRoles = identity.getDetectedRoles();
    List bundleListAssignedRoles = identity.getAssignedRoles();

    for(Bundle bundle:bundleListDetectedRoles)
    {
      allAvailableRoles.add(bundle.getName());
    }

    if(allAvailableRoles.isEmpty())
    {
      /*
      	Reason of comment: Ignoring the idenity who has not been assigned roles yet
        Can uncommment if need to add the below string message 
      */
      //allAvailableRoles.add("No roles assigned yet");
    }
    else 
    {
      userAndRoleMap.put(identity.getName(), allAvailableRoles);
    }

    for(Bundle bundle:bundleListAssignedRoles)
    {
      allAvailableRoles.add(bundle.getName());
    }

    if(allAvailableRoles.isEmpty())
    {
      /*
      	Reason of comment: Ignoring the idenity who has not been assigned roles yet
        Can uncommment if need to add the below string message 
      */
      //allAvailableRoles.add("No roles assigned yet");
    }
    else 
    {
      userAndRoleMap.put(identity.getName(), allAvailableRoles);
    }
  }

  return userAndRoleMap; //main MAAL to return 
  //end

  </Source>
</Rule>
