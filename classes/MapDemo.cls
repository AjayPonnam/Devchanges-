public class MapDemo {
public void mapDemoMethod()
{
  Map<Id,Account > Acc = new  Map<Id,Account >([select Id,Name from Account limit 2]);
      System.debug('Acc' +Acc);
    
}    
}