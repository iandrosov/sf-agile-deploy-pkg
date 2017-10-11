/**
 * Unit Test Extention controler for Deployment
 * page EXT_ADMStoryList based on ADM_Work__c records
 * presenting list of Work Item stories in
 * Agile Accelerator
 * 
 * author:ai
 */ 
@isTest
private class EXT_ADM_StoryListCtrlTest {

    static testMethod void baseURLTest() {
        
        agf__ADM_Work__c work = new agf__ADM_Work__c();
        work.agf__Description__c = 'Test Story';
        
        List<agf__ADM_Work__c> lst = new List<agf__ADM_Work__c>();
        lst.add(work);
        
        ApexPages.StandardSetController stdWork = new ApexPages.StandardSetController(lst);
        EXT_ADM_StoryListCtrl ctrl = new EXT_ADM_StoryListCtrl(stdWork);
        String base = ctrl.getBaseURL();        
    }

}