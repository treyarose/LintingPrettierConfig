public class AjaxWildcardController {
Public string inputtext{get;set;}
    Public List<Task> taskList{get;set;}
    Public boolean flagshow{get;set;}
    Public AjaxWildcardController(){
    flagshow = false;
    }
    Public void actionLoadMethod(){
        taskList = database.Query('select Id, subject, description, WhatId, CreatedDate, LastModifiedDate from Task where WhatId != null ORDER BY LastModifiedDate DESC NULLS LAST limit 500');
    }
    Public void actionSupMethod(){
     system.debug('inputtext-->'+inputtext);
      taskList = database.Query('select Id, subject, description, WhatId, CreatedDate, LastModifiedDate from Task where WhatId != null AND subject like '+'\''+'%'+inputtext+'%'+'\'');
    }
}