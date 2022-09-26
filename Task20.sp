<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659822772694" id="c0a8380182731e448182752591d601e3" language="beanshell" modified="1663616974835" name="Presentation Task 20">
  <Source>

  //T20: Write a rule to return the list of application/account  an identity has.

  import sailpoint.object.Identity;
  import sailpoint.object.Link;

  List identitiesObjects = context.getObjects(Identity.class);

  Map map = new HashMap();

  for(Identity identity : identitiesObjects)
  {
    List linksList = identity.getLinks();

    if(linksList.size() > 0)
    {
      List appList = new ArrayList();

      for(Link link : linksList)
      {
        appList.add(link.getApplication().getName());
      }

      map.put(identity.getName(), appList);
    }
  }

  return map; 

  </Source>
</Rule>
