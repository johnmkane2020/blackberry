/**
 * Created by mrichmond on 2022-04-29.
 */

public with sharing class AccountService {

    public static Account getAccount(Id accountId) {

        return [SELECT Id, Name FROM Account WHERE Id = :accountId WITH SECURITY_ENFORCED];
    }

    public static List<Account> getAccountByName(String name) {

        return [SELECT Id, Name, Industry FROM Account WHERE Name = :name WITH SECURITY_ENFORCED];
    }

    public static List<Account> getAccountByIndustry(String industry) {

        return [SELECT Id, Name, COPADO_9__c FROM Account WHERE Industry = :industry WITH SECURITY_ENFORCED];
    }

}