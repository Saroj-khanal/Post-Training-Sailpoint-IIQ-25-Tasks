<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659822725858" id="c0a8380182731e4481827524dae201e2" language="beanshell" modified="1663616927000" name="Presentation Task 19">
  <Source>

  //T19: Write a rule to return the description and owner of entitments in IIQ

  import sailpoint.object.ManagedAttribute;

  List ownerList = new ArrayList();
  List entitlementsList = new ArrayList();
  Map map = new HashMap();

  List managedAttributeList = context.getObjects(ManagedAttribute.class);
  //return managedAttributeList; //it returns the list of objects of all managed attributes available in the SP

  //loop through all the objects of managed attributes and find Door Management System app and add the name of entitlements into the list
  for(ManagedAttribute managedAttribute:managedAttributeList) 
  {
    if(managedAttribute.getApplication().getName().equals("Door Management System"))
    {
      ownerList.add(managedAttribute.getOwner().getName());
      entitlementsList.add(managedAttribute.getValue());
    }
  }

  return entitlementsList;
  return ownerList;

  </Source>
</Rule>
