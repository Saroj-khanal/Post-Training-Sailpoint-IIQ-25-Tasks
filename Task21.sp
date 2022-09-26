<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1659822911152" id="c0a8380182731e4481827527aeb001f1" language="beanshell" modified="1663617133266" name="Presentation Task 21">
  <Source>

  //T21: Write a rule to generate random 15 digit password which contains one upper case, one special character, one numeric value and other lower case. 

  String password = "";

  List intList = new ArrayList();
  List testList = new ArrayList();

  intList.add(0);
  intList.add(1);
  intList.add(2);
  intList.add(3);
  intList.add(4);
  intList.add(5);
  intList.add(6);
  intList.add(7);
  intList.add(8);
  intList.add(9);
  intList.add(10);
  intList.add(11);
  intList.add(12);

  String password = "";

  for(int num : intList)
  {
    int lowerCaseInt = (int)(Math.random()*(122-97)+97);
    char lowerCaseChar = (char) lowerCaseInt;
    password += lowerCaseChar;
  }

  int upperCaseInt = (int)(Math.random()*(90-65)+65);
  char upperCaseChar = (char) upperCaseInt;
  password += upperCaseChar;

  int numericInt = (int)(Math.random()*(57-48)+48);
  char numericChar = (char) numericInt;
  password += numericChar;

  int specialInt = (int)(Math.random()*(38-33)+33);
  char specialChar = (char) specialInt;
  password += specialChar;

  return "\n\nPassword:\n\n" + password + "\n\n";

  </Source>
</Rule>
