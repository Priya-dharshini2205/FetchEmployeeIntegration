public with sharing class FetchEmployeeDetails {
    @AuraEnabled
    public static String getEmployeeDetails(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummy.restapiexample.com/api/v1/employees');
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json, text/plain, */*');
        request.setHeader('Content-Type', 'application/json;charset=utf-8');
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());  
              
            return response.getBody();
        }
        else{
             
            return response.getStatusCode()+'';
        }
    }
}