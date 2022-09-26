<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657312242321" id="c0a8380181de18d08181df81ea91010e" language="beanshell" modified="1663615975975" name="Presentation Task 8">
  <Source>
    
    import sailpoint.object.Identity;
  	import sailpoint.object.QueryOptions;
  	import sailpoint.object.Filter;	
  	import sailpoint.object.Link;
  
	//T8: Write a rule to get the list of user who have Active Directory applications. Use QueryOptions, and Filter.Hint Filter.eq(“links.application.name”, “Active Directory”);
	
  
  // FIRST WAY -------------------------------------------------------------- START
  
  List userList = new ArrayList();
  
  List idenList = context.getObjects(Identity.class);
  //return idenList;
  
  for(Identity iden:idenList)
  {
    List linksList = iden.getLinks();
    
    for(Link link:linksList)
    {
      if(link.getApplication().getName().equals("Active Directory"))
    	{
      	userList.add("This user is in AD: " + iden.getName());
    	}
    }
  }
  return userList; //main MAAL to return 
  
  //FIRST WAY ---------------------------------------------------------------- END
  
  
	//SECOND WAY --------------------------------------------------------------- START
  
  ArrayList list = new ArrayList();
  
  List identities = context.getObjects(Identity.class);
  
  Application app = context.getObjectByName(Application.class, "Active Directory");
  
  //return app; //return the active directory app object 
  //return app.getName(); //return the name of the active directory 
  
  for(Identity iden: identities)
  {
    //return iden;
    IdentityService is = new IdentityService(context);
    List links = is.getLinks(iden, app);
    //return links; //why its returning empty links - because the first user spadmin is not in active directory 
    
    for(Link link: links)
    {
      //return iden.getName();
      String nameAD = iden.getName();
      list.add("This user is in AD: " + nameAD);
    }
  }
  //return list; //main MAAL to return 
  
  //SECOND WAY -------------------------------------------------------------- END 
  
  
  //THIRD WAY -------------------------------------------------------------- START 
  
  List userNameWithAdApp = new ArrayList();
  
 	QueryOptions queryOption = new QueryOptions();
  queryOption.addFilter(Filter.eq("links.application.name", "Active Directory"));
  
  List idenObjectWithAdApp = context.getObjects(Identity.class, queryOption);
  //return idenObjectWithAdApp; //it returns the list of identity objects who have AD app
  
  for(Identity iden:idenObjectWithAdApp)
  {
    userNameWithAdApp.add("This user is in AD: " + iden.getName());
  }
  //return userNameWithAdApp; //main MALL to return 
  
  //THIRD WAY -------------------------------------------------------------- END 
    
  </Source>
</Rule>
