public virtual class ProjectRepository {
    
    virtual
        public List<Project__c> create (List<Project__c> projects) {
            insert projects;
            return projects;
        }
    
    virtual
        public List<Project__c> store (List<Project__c> projects) {
            update projects;
            return projects;
        }
    
    virtual
        public void remove (List<Project__c> projects) {
            delete projects;
        }
}