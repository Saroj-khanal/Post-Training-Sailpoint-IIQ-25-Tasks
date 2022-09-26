<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1657312699285" id="c0a8380181de18d08181df88e3950125" language="beanshell" modified="1663616317606" name="Presentation Task 12">
  <Source>
    
  import sailpoint.object.Certification;
  
	//T12: Write a rule to return all the certification in your system and its certifiers.
  
  
  Map certificationCertifier = new HashMap();
  
	//storing the list of certification in certificationList
	List certificationList = context.getObjects(Certification.class);
  
  
  //looping through certificaiton list 
  for(Certification certification:certificationList)
  {
    certificationCertifier.put(certification.getCertificationName(), certification.getCertifiers());
  }
  
  return "\n\nCertification name and Certifiers list in MAP =>> " + certificationCertifier + "\n\n";
    
  </Source>
</Rule>
