public class EventCategoriaPremiumHandler {
    public static void TriggerAfter(List <Account> Accounts){
        List<Event> Events = new List<Event>();
        for(Account newAccount : Accounts){
            if(newAccount.categoria__c == EventCategoriaPremiumConstants.EVENT_CATEGORY && newAccount.AnnualRevenue > 1000000){
                Event newEvent = new Event(); 
                newEvent.description = EventCategoriaPremiumConstants.EVENT_DESCRIPTION;
                newEvent.Subject = EventCategoriaPremiumConstants.EVENT_SUBJECT;
                newEvent.WhatId= newAccount.id;
                newEvent.StartDateTime = System.now();
                newEvent.EndDateTime = System.now().addHours(1);            
                newEvent.ActivityDateTime = System.now();
                newEvent.DurationInMinutes = 60;
                newEvent.ContactType__c = 'Telefônico';
                Events.add(newEvent);
            }
        }
        if(Events.size () > 0){
            insert Events;
        }
    }
}
