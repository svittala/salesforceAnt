<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_I_E_Business_Owner_when_Assigned</fullName>
        <description>Email I&amp;E Business Owner when Assigned</description>
        <protected>false</protected>
        <recipients>
            <field>Business_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/I_E_Business_Owner</template>
    </alerts>
    <alerts>
        <fullName>Email_I_E_IT_Owner_when_Assigned</fullName>
        <description>Email I&amp;E IT Owner when Assigned</description>
        <protected>false</protected>
        <recipients>
            <field>IT_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/I_E_IT_Owner</template>
    </alerts>
    <rules>
        <fullName>I%26E Business Owner Assigned or Changed</fullName>
        <actions>
            <name>Email_I_E_Business_Owner_when_Assigned</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>OR(
ISCHANGED(Business_Owner__c),
ISNEW()
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>I%26E IT Owner Assigned or Changed</fullName>
        <actions>
            <name>Email_I_E_IT_Owner_when_Assigned</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>OR(
ISCHANGED(IT_Owner__c),
ISNEW()
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
