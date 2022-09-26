<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657251146752" id="c0a8380181d912228181dbddac0003cf" language="beanshell" modified="1663607255852" name="Presentation Task 5">
  <Source>
  
	//T5: Write a rule to get all the User Rights(capability) of  all users. Return in map format with key as user and value as list of user rights.
  
  /*
  	Logic: Loop through all the identities. identity.getCapabilities() return the List of Capabilities object. 
    Loop through the capabilities objects and capability.getName() returns the actual string name of capabilities.
    Store that in list. Incase if some idenity does not have capabilities, to get rid of that, add that string
    capability to the list inside if with the conditon if the list of the list if greater than 0. 
  */
  
  import sailpoint.object.Identity;
  import sailpoint.object.Capability;
  
  //List testList = new ArrayList(); //for test purpose 
  //Map testMap = new HashMap(); //for test purpose
  
  List identityList = context.getObjects(Identity.class);
  //return identityList; //for test purpose
  
  Map userAndUserRightMap = new HashMap();
  
  for(Identity identity:identityList) //looping through all the identity 
  {
    //it output the list of capabilities of first user - spadmin
    //return identity.getCapabilities();
    
    List capabilityList = new ArrayList(); //this list is used to track capabilities of each user and add that to map
    
    //Each identity has a list of capabilities, so loop through capabilities of each user and make a list of capabilities 
    List capabilityObjectList = identity.getCapabilities();
    //return capabilityObjectList; //for test
    
    for(Capability capability:capabilityObjectList)
    {
      //return capability.getName(); 
      capabilityList.add(capability.getName());
    }
    
    //checking if any user has at least 1 capability
    //if not, do not put that user into the map
    //just put the user who has capabilities intot map along with name
    if((capabilityList.size()) > 0)
    {
      userAndUserRightMap.put(identity.getName(), capabilityList);
    }
  }
  return userAndUserRightMap;
  </Source>
</Rule>
