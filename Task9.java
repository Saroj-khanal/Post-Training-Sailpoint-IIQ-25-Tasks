<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657312331723" id="c0a8380181de18d08181df8347cb010f" language="beanshell" modified="1663616067883" name="Presentation Task 9">
  <Source>
  
  //T9: Write a rule to to return list of identity who have specific manager. User queryOptions and filter. Hint Filter.eq(“”manager.name”, “RBVH”).
    
  import sailpoint.object.Identity;
 	import sailpoint.object.QueryOptions;
  import sailpoint.object.Filter;	
  
  List idenManagerRbvh = new ArrayList();
  
 	QueryOptions queryOption = new QueryOptions();   //decalre queryOtion object 
  queryOption.addFilter(Filter.eq("manager.name", "RBVH")); //adding filter on that queryOption object 
  
  //Making a list of all identity with manager RBVH using the queryOption filter created above 
  List idenObjListWithManager = context.getObjects(Identity.class, queryOption); 
  //return idenObjListWithManager); //return the list of all identity object with manager RBVH
  //return idenObjListWithManager.get(0); //return the first identity object with manager RBVH
  
	for(Identity identity:idenObjListWithManager)
  {
    //return idenObjListWithManager.get(0); //get the first identity object 
    //return idenObjListWithManager.get(0).getName(); //get the name of the identity from the first identity object i.e RBVH
    idenManagerRbvh.add(identity.getName());
  }
  //return idenManagerRbvh; //return list of identities with manager RBVH
  return "List of identities with manager RBVH: " + idenManagerRbvh; //return string along with list
  
  //return context.getObjects(Identity.class, queryOption);

    
  </Source>
</Rule>
