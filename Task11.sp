<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657312446853" id="c0a8380181de18d08181df8509850117" language="beanshell" modified="1663616258435" name="Presentation Task 11">
  <Source>
    
   import sailpoint.object.Identity;
 
	//T11: Write a rule to return  particular identityAttribute(departmentName, email) for particular user.
  
  Identity identity = context.getObject(Identity.class, "ENER");
  return "\n\nUser =>> ENER \n\nEmail: " + identity.getAttribute("email") + "\nDepartment Number: " + identity.getAttribute("departmentNumber") + "\n\n";
  
    
  </Source>
</Rule>
