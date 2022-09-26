<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659823003477" id="c0a8380182731e4481827529175501f2" language="beanshell" modified="1663617159349" name="Presentation Task 22">
  <Source>
  
	//T22: Write a rule to return all active directory /groupentitments in IIQ.
  
  import sailpoint.object.QueryOptions;
  import sailpoint.object.Filter;
  import sailpoint.object.Identity;
  import sailpoint.object.ManagedAttribute;
  import sailpoint.object.Link;
  
  List entitlementsList = new ArrayList();
  List managedAttributeList = context.getObjects(ManagedAttribute.class);
  
  for(ManagedAttribute managedAttribute:managedAttributeList)
  {
    if(managedAttribute.getApplication().getName().equals("Active Directory"))
    {
      entitlementsList.add(managedAttribute.getDisplayName());
    }
  }
  
  return "\n\nEntitlements from Active Directory:\n\n" + entitlementsList + "\n\n";
    
  </Source>
</Rule>
