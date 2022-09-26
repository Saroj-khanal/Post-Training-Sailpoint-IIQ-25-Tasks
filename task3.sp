<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657214185538" id="c0a8380181d912228181d9a9b04200f6" language="beanshell" modified="1663606941080" name="Presentation Task 3">
  <Source>
  
  //T3: Write a rule to find all the users which are active in sailpoint and print  the user as lastname.firstname in the console.
  
  /*
  Logic: same logic as task no. 2
  */
  
  import sailpoint.object.Identity;
  
  List identityList = context.getObjects(Identity.class);
  //return identityList;
  
  List activeUsers = new ArrayList();
  
  for(Identity identity:identityList)
  {
    if(identity.isInactive())
       {
         
       }
       else 
       {
         activeUsers.add(identity.getLastname() + "." + identity.getFirstname());
       }
  }
  
  return activeUsers;
  
    
  </Source>
</Rule>
