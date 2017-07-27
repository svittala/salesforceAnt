trigger ProductTrigger on Product2 (before update, before insert, after update, after insert) {
    if ( Trigger.isBefore ) {
        PriceBookUtil.fixProduct( Trigger.new );
    }
    if ( Trigger.isAfter ) {
        PriceBookUtil.setupPricebook( Trigger.new );
    }
}