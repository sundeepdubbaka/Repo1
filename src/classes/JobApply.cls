/*--------------Comment____________*/
//skhdfvbsdkbsk
//Sandeep test
//test2
// commneted bu krishnaveni
//sandy 1235678
// D krishnaveni***********************1/7/2014**sdfsdf****
//Sandeep Added 07 Aprl 2014
//sandeep123
// added by kv now only 
public with sharing class JobApply {
public List<Position__c>pos{get; set;}
public integer Selected{get; set;}
public List<InnerClass> PosWrapper{get; set;}
public boolean unChk;

public JobApply()
   {
unChk = false;
PosWrapper = new List<InnerClass>();
pos = [select id, Name, Funtional_Area__c, Location__c, Job_Type__c from Position__c limit 10];
for(integer i = 0; i<pos.size(); i++)
   {
InnerClass OpenPos = new InnerClass(pos[i], unChk);
PosWrapper.add(OpenPos);
   }
  }
  
 public class InnerClass
 {
 public Position__c InPos{get; set;}
 public boolean tounChk{get; set;}
 public InnerClass(Position__c OutPos, boolean fromUnchk)
 {
 InPos = OutPos;
 tounChk = fromUnchk;
 }
}
}