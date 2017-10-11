/**
 * Extention controler for Deployment
 * page EXT_ADMStoryList based on ADM_Work__c records
 * presenting list of Work Item stories in
 * Agile Accelerator
 * 
 * author:ai
 */ 
public with sharing class EXT_ADM_StoryListCtrl {
      //public agf__ADM_Work__c work {get; set;}
    
    public EXT_ADM_StoryListCtrl(ApexPages.StandardSetController controller) {
           //this.work = (agf__ADM_Work__c) controller.getRecord();             
    }  

    public String getBaseURL(){
		String baseURL = URL.getSalesforceBaseUrl()+'';
        return baseURL;
    }

}