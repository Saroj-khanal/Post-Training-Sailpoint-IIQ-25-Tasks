<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657208351953" id="c0a8380181d912228181d950acd10035" language="beanshell" modified="1663606885154" name="Presentation Task 1">
  <Source>
  
  //T1: Write a rule to find out assigned role and the detected role the particular Identity has.
  
  /*
  	Logic: getObjects from context  of one identity. identity.getAssignedRoles() returns the bundle list of roles that identity has. 
    Each list in that bundle list is the object of each role. Loop throug that list and bundle.getName() returns the name of that list 
    which is the actual AssignedRole of that user. Add that role name to different list inside loop and return the list that contains
    all the roles name. 
  */
  
  import sailpoint.object.Bundle;
  import sailpoint.object.Identity;
  
  List identityList = context.getObjects(Identity.class); 
  //return identityList;
  
  
  //return identityList; //it returns the list of all available identities object
  
  //GETTING SPECIFIC USER IDENTITY OBJECT
  Identity identity = context.getObject(Identity.class, "FBJ3"); //FBJ3 has one of each role
  //Identity identity = context.getObject(Identity.class, "Y907"); //Y907 has 2 detected role
  //return identity;
  //return identity.getName(); //Return FBJ3
  //return identity.getFirstname(); //Return Collen
  //return identity.getLastname(); //Return White
  //return identity.getFullName(); //Return Collen White
  
  //return identity; //GET FBJ3 IDENTITY OBJECT 
  //return identity.getAssignedRoles(); //return bundle list that has Assignment Roles in there
  //return identity.getDetectedRoles(); //return list that has Detected Roles in there
  
  List bundleNameList = new ArrayList();
  
  List bundleList = identity.getAssignedRoles();
  //return bundleList;
  
  for(Bundle bundle:bundleList)
  {
    bundleNameList.add(bundle.getName());
  }
  //return bundleNameList; //return only role as string 
  
  List bundleList = identity.getDetectedRoles();
  //return bundleList;
  
  for(Bundle bundle:bundleList)
  {
    bundleNameList.add(bundle.getName());
  }
  return bundleNameList; //return only role as string 
  

  </Source>
</Rule>
