/**
 * Created by mrichmond on 2022-05-04.
 */

public with sharing class AccountUtility {

    public List<Account> getByCopadoField(Boolean b) {
        return [SELECT Id, COPADO_2__c FROM Account WHERE COPADO_2__c = :b];
    }
}