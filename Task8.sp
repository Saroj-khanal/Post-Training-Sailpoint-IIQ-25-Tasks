<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657312192483" id="c0a8380181de18d08181df8127e3010c" language="beanshell" modified="1663949766895" name="Presentation Task 7">
  <Source>
    
  import sailpoint.object.Identity;
  import sailpoint.object.Link;

  
	//T7: Write a rule to return attribute samAccountName of specific identity from AD application.
  
  /*
  	Logic: Same as Task 7
  */
  
  Identity identity = context.getObject(Identity.class, "FBJ3");
  //return identity.getName();
  
  //return identity.getLinks(); //give all the links in that identity object 
  
  //return identity.getLinks().size(); //get size of Links list
  
  List linkList = identity.getLinks();
  
  for(Link link:linkList)
  {
    //return link.getApplication().getName(); //return the name of the first application 
    
     //if app is Active Directory, then show the sAMAccountName
    if(link.getApplication().getName().equals("Active Directory"))
    {
      //return link.getAttributes().getString("sAMAccountName"); //this works too
      return link.getAttribute("sAMAccountName");
    }
  }
  
  //return identity.getLinks().get(2); //gives Active Directory app info for that user
  
  //return identity.getLinks().get(2).getApplication(); //gives the third application object 
  
  //return identity.getLinks().get(2).getApplication().getName(); //gives the name of third application object 
  
  //return identity.getLinks().get(2).getAttributes().getString("sAMAccountName");
  
  </Source>
</Rule>
