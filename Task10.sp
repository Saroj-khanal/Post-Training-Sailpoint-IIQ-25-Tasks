<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657312409159" id="c0a8380181de18d08181df8476470116" language="beanshell" modified="1663616174237" name="Presentation Task 10">
  <Source>
  
	//T10: Write a rule to return entitlements from particular  Applications.
  
  //RETURN ENTITLEMENT FROM DOOR MANAGEMENT SYSTEM 
  
  import sailpoint.object.ManagedAttribute;
  
  List entitlementsList = new ArrayList();
  List managedAttributeList = context.getObjects(ManagedAttribute.class);
  //return managedAttributeList; //it returns the list of objects of all managed attributes available in the SP
  
  //loop through all the objects of managed attributes and find Door Management System app and add the name of entitlements into the list
  for(ManagedAttribute managedAttribute:managedAttributeList) 
  {
    if(managedAttribute.getApplication().getName().equals("Door Management System"))
    {
      entitlementsList.add(managedAttribute.getValue());
    }
  }
  return "\n\nEntitlements from Door Management System APP:  " + entitlementsList + "\n\n";
  
  //------------------------------------------------------------------------------------------------------------------------//
  
  //RETURN ENTITLEMENT FROM ACTIVE DIRECTORY 
  
  List entitlementsList = new ArrayList();
  List managedAttributeList = context.getObjects(ManagedAttribute.class);
  //return managedAttributeList; //it returns the list of all managed attributes available in the SP
  
  //loop through all the objects of managed attributes and find Active Directory app and add the displayName of entitlements into the list
  for(ManagedAttribute managedAttribute:managedAttributeList)
  {
    if(managedAttribute.getApplication().getName().equals("Active Directory"))
    {
      entitlementsList.add(managedAttribute.getDisplayName());
    }
  }
  //return "\n\nEntitlements from Active Directory APP:  " + entitlementsList + "\n\n";
 
  </Source>
</Rule>
