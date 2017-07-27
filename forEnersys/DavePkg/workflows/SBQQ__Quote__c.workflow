<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_of_Quote_Approval</fullName>
        <description>Notification of Quote Approval</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Approved_Quote_Notification</template>
    </alerts>
    <alerts>
        <fullName>Request_to_Revise_Quote</fullName>
        <description>Request to Revise Quote</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Request_to_Revise_Quote</template>
    </alerts>
    <fieldUpdates>
        <fullName>MP_Quote_Check_Group_Line_Items</fullName>
        <field>SBQQ__LineItemsGrouped__c</field>
        <literalValue>1</literalValue>
        <name>MP Quote: Check Group Line Items</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Quote_Template_ID_MP</fullName>
        <field>SBQQ__QuoteTemplateId__c</field>
        <formula>$Label.Quote_Template_MP</formula>
        <name>Quote Template ID MP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Quote_Template_ID_RP</fullName>
        <field>SBQQ__QuoteTemplateId__c</field>
        <formula>$Label.Quote_Template_RP</formula>
        <name>Quote Template ID RP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Quote_Template_ID_Rental</fullName>
        <field>SBQQ__QuoteTemplateId__c</field>
        <formula>$Label.Quote_Template_Rental</formula>
        <name>Quote Template ID Rental</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rental_Quote_Approved</fullName>
        <description>Updates a rental quote to the rental approved status</description>
        <field>RecordTypeId</field>
        <lookupValue>Rental_Quote_Approved</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Rental Quote Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Quote_Status</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>In Review</literalValue>
        <name>Update Quote Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type_Approved</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Sales_Quote_Approved</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Rental_Approved</fullName>
        <description>updates the rental quote to approved status and the record type to rental approved</description>
        <field>RecordTypeId</field>
        <lookupValue>Rental_Quote_Approved</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Rental Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_Approved</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_Draft</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Update Status Draft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_after_Rejection</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Update Status after Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Watermark_Checkbox</fullName>
        <field>SBQQ__WatermarkShown__c</field>
        <literalValue>0</literalValue>
        <name>Update Watermark Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>MP Quotes%3A Group Quote Line Items</fullName>
        <actions>
            <name>MP_Quote_Check_Group_Line_Items</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.SBU__c</field>
            <operation>equals</operation>
            <value>MP - Americas</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Template Preview - Rental Quote</fullName>
        <actions>
            <name>Quote_Template_ID_Rental</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Rental Quotation</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Template Preview MP - Americas</fullName>
        <actions>
            <name>Quote_Template_ID_MP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.SBU__c</field>
            <operation>equals</operation>
            <value>MP - Americas</value>
        </criteriaItems>
        <criteriaItems>
            <field>SBQQ__Quote__c.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Rental Quotation</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Template Preview RP - Americas</fullName>
        <actions>
            <name>Quote_Template_ID_RP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.SBU__c</field>
            <operation>equals</operation>
            <value>RP - Americas</value>
        </criteriaItems>
        <criteriaItems>
            <field>SBQQ__Quote__c.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Rental Quotation</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
