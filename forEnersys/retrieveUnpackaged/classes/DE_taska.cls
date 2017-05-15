public with sharing class DE_taska {
  public String idz {get;set;}
  public list<Activity_Template_Task__c> taskz {get;set;}
  public list<Campaign> campz {get;set;}
  public User howz {get;set;}
  public Task tz {get;set;}
  public list<Group> mike{get;set;}
  public string dude{get;set;}

  public DE_taska() {
    howz= new User();
    tz= new Task();
    dude='mike';
    idz = Apexpages.currentPage().getParameters().get('id');
    taskz=[SELECT Activity_Name__c,Activity_Template__c,Comments__c,Due_Date__c,Id,Name FROM Activity_Template_Task__c where Activity_Template__c=:idz ];
    mike=[SELECT Email,Id,Name,Type FROM Group WHERE Type='Regular'];
    //00Gi0000001bfeqEAA
  }
  
  public void deletetasks(){
    Task[] removeTasks=[select id from Task where WhatId=:tz.WhatId];
    try{
      delete removeTasks;
    }
    catch(DmlException e){
    }
  }

  public PageReference saveUser(){
    Task newtask;

    for (Activity_Template_Task__c za: taskz){
      newtask=new Task();
      newtask.ActivityDate=za.Due_Date__c;
      newtask.Description=za.Comments__c;
      newtask.Subject=za.Activity_Name__c;
      
      newtask.OwnerId=tz.OwnerId;
      newtask.whatid=tz.WhatId;
      insert newtask;
    }
    update taskz;
    return new PageReference('/'+tz.WhatId);
  }

  public PageReference saveRegion(){
    list<GroupMember> gm=[SELECT GroupId,Id,UserOrGroupId FROM GroupMember WHERE GroupId=:dude];
    Task newtask2;
        String userType = Schema.SObjectType.User.getKeyPrefix();

     //System.assert(false, dude);
    for(GroupMember abc: gm){
                  if (((String)abc.UserOrGroupId).startsWith(userType)){

      for (Activity_Template_Task__c za: taskz){
        newtask2=new Task();
        newtask2.ActivityDate=za.Due_Date__c;
        newtask2.Description=za.Comments__c;
        newtask2.Subject=za.Activity_Name__c;
        
        newtask2.OwnerId=abc.UserOrGroupId;
        newtask2.whatid=tz.WhatId;
        insert newtask2;
      }
      }
    }
    update taskz;
    return new PageReference('/'+tz.WhatId);
  }


  public PageReference saveRole(){
    list<User> userstoadd=[select id from User where UserRoleId=:howz.UserRoleId];
    Task newtask2;

    for(User myu: userstoadd){
      for (Activity_Template_Task__c za: taskz){
        newtask2=new Task();
        newtask2.ActivityDate=za.Due_Date__c;
        newtask2.Description=za.Comments__c;
        newtask2.Subject=za.Activity_Name__c;    
        newtask2.OwnerId=myu.id;
        newtask2.whatid=tz.WhatId;
        insert newtask2;
      }
    }

    return new PageReference('/'+tz.WhatId);
  }

  public List<SelectOption> getRegion() {
    List<SelectOption> Region= new List<SelectOption>();
     
     for(Group zz: mike){
          Region.add(new SelectOption(zz.id,zz.name));
       }
        
        return Region;
        }
}