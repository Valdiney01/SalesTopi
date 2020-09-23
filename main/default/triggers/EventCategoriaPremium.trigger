trigger EventCategoriaPremium on Account (After insert, after update) {
    
    if(trigger.isAfter){
        EventCategoriaPremiumHandler.TriggerAfter(Trigger.new);
    }
}