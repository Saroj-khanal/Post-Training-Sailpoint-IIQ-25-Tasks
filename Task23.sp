<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659823076107" id="c0a8380182731e448182752a330b01f3" language="beanshell" modified="1663617185080" name="Presentation Task 23">
  <Source>
  
	//T23: Write a rule to return all users from authoritative source in IIQ (HR feed app is Authorative Source)
  
  import sailpoint.object.QueryOptions;
  import sailpoint.object.Filter;
  import sailpoint.object.Identity;
  
  List userWithHrFeedApp = new ArrayList();
  
  QueryOptions queryOption = new QueryOptions();
  queryOption.addFilter(Filter.eq("links.application.name", "HR FEED"));
  
  List idenObjectWithhrFeedApp = context.getObjects(Identity.class, queryOption);
  
  for(Identity identity : idenObjectWithhrFeedApp)
  {
    userWithHrFeedApp.add(identity.getName());
  }
  
  return userWithHrFeedApp;
  
    
  </Source>
</Rule>
