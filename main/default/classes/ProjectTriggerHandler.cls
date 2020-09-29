public  class ProjectTriggerHandler {
    public static void checkStatusChange(List <Project__c> projects){
        for(Project__c projeto : projects){
            if(projeto.projectType__c == 'Enterprise' && projeto.status__c == 'Iniciado' ){
                 SendProjectApi.sendProject();
            }
        }
    }
}