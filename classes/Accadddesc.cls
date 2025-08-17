public class Accadddesc {
    public static void addDisc() {
        try{
            List<Account> accList= [select Id,Name,Description from Account limit 100];
        List<Account> newList = new List<Account>();
        for(Account acc: accList ){
            acc.Description='Test Account is created';
            newList.add(acc);
        }
        if(!newList.isEmpty())
            update newList;
        }catch(Exception e)
        {
          System.debug('Error while updating the Descriptions:' +e.getmessage());
        }
        
    }
}