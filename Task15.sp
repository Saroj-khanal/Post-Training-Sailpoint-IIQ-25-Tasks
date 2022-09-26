<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule created="1658682711691" id="c0a83801821d130e818231319e8b0a91" language="beanshell" modified="1663616740271" name="Presentation Task 15">
  <Source>
  
	//T15: Write a rule to return all the workflows which has type "LCMProvisioning".
  
  import sailpoint.object.Workflow;
  
  List workflowList = context.getObjects(Workflow.class);
  
  List lcmProvisioningWorkFlowNameList = new ArrayList();
  
  for(Workflow workflow:workflowList)
  {
    //return workflow.getName();
    //return workflow.getType();
    
    if(workflow.getType().equals("LCMProvisioning"))
    {
      lcmProvisioningWorkFlowNameList.add(workflow.getName());
    }
  }
  
  return "\n\n" + "List of Workflows which has type LCMProvisioning =>> "  +  lcmProvisioningWorkFlowNameList + "\n\n";
    
  </Source>
</Rule>
