<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>PriceBook_Update_MP</fullName>
        <field>SBQQ__QuotePricebookId__c</field>
        <formula>$Label.Price_Book_MP_701</formula>
        <name>PriceBook Update MP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PriceBook_Update_RP_701</fullName>
        <field>SBQQ__QuotePricebookId__c</field>
        <formula>$Label.Price_Book_RP_701</formula>
        <name>PriceBook Update RP 701</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PriceBook_Update_RP_702</fullName>
        <field>SBQQ__QuotePricebookId__c</field>
        <formula>$Label.Price_Book_RP_702</formula>
        <name>PriceBook Update RP 702</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>SBU and Company Code Opp MP - Americas</fullName>
        <actions>
            <name>PriceBook_Update_MP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.SBU__c</field>
            <operation>equals</operation>
            <value>MP - Americas</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>SBU and Company Code Opp RP 701 - Americas</fullName>
        <actions>
            <name>PriceBook_Update_RP_701</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.SBU__c</field>
            <operation>equals</operation>
            <value>RP - Americas</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Company_Code__c</field>
            <operation>equals</operation>
            <value>701</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>SBU and Company Code Opp RP 702 - Americas</fullName>
        <actions>
            <name>PriceBook_Update_RP_702</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.SBU__c</field>
            <operation>equals</operation>
            <value>RP - Americas</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Company_Code__c</field>
            <operation>equals</operation>
            <value>702</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
