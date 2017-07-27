<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>SAP_Create_Key</fullName>
        <field>Key__c</field>
        <formula>IF(ISPICKVAL(System__c, &apos;Baan&apos;), &quot;B&quot; &amp; RIGHT(TEXT(Code_Type__c), 2) &amp;&quot;-&quot; &amp;Code__c,
IF(ISPICKVAL(System__c, &apos;SAP&apos;), &quot;S&quot; &amp; RIGHT(TEXT(Code_Type__c), 2) &amp;&quot;-&quot; &amp;Code__c,
NULL))</formula>
        <name>SAP: Create Key</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>SAP%3A Create Key</fullName>
        <actions>
            <name>SAP_Create_Key</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SAP_Reference__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
