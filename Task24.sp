<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659823162205" id="c0a8380182731e448182752b835d01fa" language="beanshell" modified="1663617210307" name="Presentation Task 24">
  <Source>
  
  import sailpoint.object.Identity;
  
	//T24: Write a rule to return all the identities that are managers.
  
  List listOfManagers = new ArrayList();
  
  List allIdentitityObjects = context.getObjects(Identity.class);
  
  for(Identity identity : allIdentitityObjects)
  {
    if(identity.getManagerStatus())
    {
      listOfManagers.add(identity.getName());
    }
  }
  
  return "\n\nList of all managers:\n\n" + listOfManagers + "\n\n";
  
  
  </Source>
</Rule>
