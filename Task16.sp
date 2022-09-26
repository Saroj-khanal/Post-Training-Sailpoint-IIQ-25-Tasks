<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658682767552" id="c0a83801821d130e8182313278c00a92" language="beanshell" modified="1663616779515" name="Presentation Task 16">
  <Source>
    
	//T16: Write a rule to create new custom object and populate the custom object with key as user and value as email.

  import sailpoint.object.Custom;
  import sailpoint.object.Identity;
 
  
  Custom sailpoint = context.getObjectByName(Custom.class, "sailpoint");
  
  if(sailpoint == null)
  {
    sailpoint = new Custom();
    
    List idenListObjects = context.getObjects(Identity.class);
    
    //return idenListObjects.get(1).getName();
    
    //return idenListObjects.get(1).getAttribute("email");
    
    for(Identity identity:idenListObjects)
    {
      String userName = identity.getName();
      String email = identity.getAttribute("email");
      
      try 
      {
        if(email.equals("null"))
        {
          email = "Email does not exist";
        }
      }
      catch(Exception e)
      {
        email = "Email does not exist";
      }
      
      sailpoint.put(userName, email);
    }
  }
  return sailpoint;
    
  </Source>
</Rule>
