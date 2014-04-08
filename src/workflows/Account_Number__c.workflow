<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Manager_Approval_for_New_Account</fullName>
        <description>Manager Approval for New Account</description>
        <protected>false</protected>
        <recipients>
            <recipient>sundeep_dev401@sfdc.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Account_Approval_Rule</template>
    </alerts>
    <alerts>
        <fullName>Manager_Approval_for_New_Account1</fullName>
        <description>Manager Approval for New Account</description>
        <protected>false</protected>
        <recipients>
            <recipient>sundeep_dev401@sfdc.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Account_Approval_Rule</template>
    </alerts>
    <rules>
        <fullName>Account Approval Rule</fullName>
        <actions>
            <name>Manager_Approval_for_New_Account</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Approval_for_New_Account</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>Documents_Verified__c = true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Approval_for_New_Account</fullName>
        <assignedTo>sundeep_dev401@sfdc.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Approval for New Account</subject>
    </tasks>
    <tasks>
        <fullName>Rejected</fullName>
        <assignedTo>sundeep_dev401@sfdc.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>rejected</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Rejected</subject>
    </tasks>
</Workflow>
