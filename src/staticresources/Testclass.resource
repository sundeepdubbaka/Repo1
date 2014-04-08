Test Class{

testmethod(){

	/* insert a record to satisfy this :[Select Deparment__c,DV_Config__c,EU_Config__c,US_Config__c,
	Name__c,suffix__c from User_Cross_Ref__c where suffix__c IN :mapSuffixByUserAdd.keyset()
	
	first case it will satisfy this condition if(ucrss.EU_Config__c=='none' && ucrss.US_Config__c !='none')
	*/

	User_Cross_Ref__c input1 = new User_Cross_Ref__c();
	|
	|

	insert input1;


	/*
		Insert a connection string record for if(lstuseraddUS.size()>0)  this condition and to satisfy this soql
	Select ConsumerKey__c,Password__c,Username__C,SecurityToken__c,URL__C,Client_Secret__c from ConnectionSetting__c where Name = 'TATAEU'	
	*/

	ConnectionSetting__c ts = new ConnectionSetting__c ();
	--
	---
	inser ts;
	/* Inser a record(s) to invoke the trigger.
User_Add__c input=new User_Add__c();
        input.Alias__c='test';
        input.Name='Name';
        input.Suffix__c='usai';
        input.Email__c='a@s.com';
        input.ApprovalStatus__c=false;
        input.Employee_Number__c='124234';
        input.IsChange__c=false;
        input.ipass__c=false;
       input.Language__c='english';
       input.Last_Name__c='test';
       input.Locale__c='asdf';
       input.Manager_Email__c='asd@s.com';
       input.Nickname__c='';
       input.Profile__c='system admin';
       input.ProfileId__c='123123';
       input.Role__c='CEO';
       input.Time_Zone__c='America/denver';
       input.Type__c='as';
       input.User__c='005Z0000001Pt2l';
       input.User_Def__c='as';
       input.User_License__c='salesforce';
       input.Username__c='test';
       input.UserRoleId__c='123123';
        insert input;
	
/// it will automatically call the class and cover most of the "InitiatemodelIdProcess(List<User_Add__c> lstUserAdds,boolean IsAfter)"
/// insert or update the above inserted record so as to cover the if else conditions.


/* update the User_Cross_Ref__c to satisfy else if(ucrss.US_Config__c=='none' && ucrss.EU_Config__c !='none')
and insert user_add__C again to invoke the trigger
*/

}
}





We can't make the call outs through the test methods so  before this statement HttpResponse res = h.send(req);
 use these statement if(!Test.isRunningTest()) to avoid the callout.
