<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Order_Rejected</fullName>
        <description>Order Rejected</description>
        <protected>false</protected>
        <recipients>
            <field>Notification_User__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Order_Rejected</template>
    </alerts>
    <alerts>
        <fullName>Order_accepted</fullName>
        <description>Order accepted</description>
        <protected>false</protected>
        <recipients>
            <field>Notification_User__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Order_Accepted</template>
    </alerts>
</Workflow>
