<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658703604716" id="c0a83801821d130e818232706bec0b25" language="beanshell" modified="1663616842242" name="Presentation Task 17">
  <Source>
  
	//T17: Write a rule to find list of users who have particular manager, and who have AD applications, and email is not null. Use QueryOptions and filter.
  
  //Logic: Get all users object with AD application, loop them, check if email is not null, if so add their email on the ArrayList and return the output 
  
  import sailpoint.object.Identity;
  import sailpoint.object.QueryOptions;
  import sailpoint.object.Filter;	
  
  List usersList = new ArrayList();
  
  QueryOptions queryOption = new QueryOptions();
  queryOption.addFilter(Filter.eq("links.application.name", "Active Directory"));
  
  List idenObjectsListWithAdApp = context.getObjects(Identity.class, queryOption);
  
  for(Identity identity : idenObjectsListWithAdApp)
  {
    if(identity.getEmail() != null)
    {
    	usersList.add(identity.getEmail());
    }
  }
  
  return usersList;
    
  </Source>
</Rule>
