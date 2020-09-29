trigger ProjectStatusChange on Project__c (after update) {
    if(trigger.isAfter){
        ProjectTriggerHandler.checkStatusChange(trigger.new);
    }
}