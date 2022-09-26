<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657211711759" id="c0a8380181d912228181d983f10f00bc" language="beanshell" modified="1663606908582" name="Presentation Task 2">
  <Source> 
  
  //T2: Write a rule to get all the list of  active users in sailpoint .
  
  /*
  Logic: In HR FEED app, we have status column, which is actually InActive column. Return all the userName that says false
  in that column i.e inactive is false means active is true so, return those user which is false. (method: identity.isInactive())
  */
  
  import sailpoint.object.Identity;
  
  List identityObjList = context.getObjects(Identity.class);
  //return identityObjList;
  
  List activeUsers = new ArrayList();
  
  for(Identity identity:identityObjList)
  {
    if(identity.isInactive())
       {
         
       }
       else 
       {
         activeUsers.add(identity.getName());
       }
  }
  
  return activeUsers;
    
  </Source>
</Rule>
