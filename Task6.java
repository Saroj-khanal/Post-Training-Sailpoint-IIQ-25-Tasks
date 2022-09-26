<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657307263861" id="c0a8380181de18d08181df35f37500b0" language="beanshell" modified="1663607337586" name="Presentation Task 6">
  <Source>
  
	//T6: Write a rule to return attribute distinguishedName(dn) of specific identity from AD application.
  
  /*
  	Logic:
  	First try to understand the identity object. Go to debug, get some identity and see that object. 
    Inside Iden Object, Inside Link, Inside Application, Inside AD app, inside attribute, inside map 
    Inside Map: Key is distinguishName and value is what we want
    
    Main Logic: First pick some idenity from AD app, then get identity.getLinks(), then loop through 
    the links and link.getAttribute("distinguishName") gives the value: Inside Map: Key is distinguishName and value is what we want
  */
  
  import sailpoint.object.Identity;
  import sailpoint.object.Link;
  
  Identity identity = context.getObject(Identity.class, "FBJ3");
  //return identity.getName();
  
  //return identity.getLinks(); //give all the links in that identity object 
  
  //return identity.getLinks().size();
  
  List linkList = identity.getLinks();
  
  for(Link link:linkList)
  {
    //if app is Active Directory, then show the distinuguishName
    //return link.getApplication();
    //return link.getApplication().getName(); //return the name of the first application 
    if(link.getApplication().getName().equals("Active Directory"))
    {
      //return link.getAttributes().getString("distinguishedName"); /this works too
      return link.getAttribute("distinguishedName"); //cool and short way
    }
  }
  
  //return identity.getLinks().get(2); //gives active directory app info for that user 
  
  //return identity.getLinks().get(2).getApplication(); //gives the third application object 
  
  //return identity.getLinks().get(2).getApplication().getName(); //gives the name of third application object 
  
  //return identity.getLinks();
  
  //return identity.getLinks().get(2).getAttributes().getString("distinguishedName");
    
  </Source>
</Rule>
