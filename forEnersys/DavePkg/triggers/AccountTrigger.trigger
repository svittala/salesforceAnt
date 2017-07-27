trigger AccountTrigger on Account (before insert, before update) {
    AccountUtil.EmeaClassification( Trigger.new );
	AccountUtil.fixAccount(Trigger.new);
}