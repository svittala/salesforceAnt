<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>set_sales_area_data_name</fullName>
        <field>Name</field>
        <formula>Sales_Organization__c + &quot;/&quot; + Distribution_Channel_Code__c + &quot;/&quot;  + Division_Code__c</formula>
        <name>set sales area data name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>set sales area name</fullName>
        <actions>
            <name>set_sales_area_data_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Sales_Area__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
