public  class TesteApi {
    public static void cotacaoDolar(Account conta){
        HTTP http = new HTTP ();
        HttpRequest request = new HttpRequest();
        request.setEndPoint('https://economia.awesomeapi.com.br/USD-BRL/1');
        request.setMethod('GET');
        httpResponse response = http.send(request);
        System.debug(response.getBody());
        if (response.getStatusCode() == 200){
            List<Dolar> lstDolar = (List<Dolar>) System.JSON.deserialize(response.getBody(), List<Dolar>.class);
            conta.CotacaoDolar__c = decimal.valueOf(lstDolar[0].ask);
            //System.debug(lstDolar);
            //System.debug(lstDolar[0].ask);
            //System.debug(lstDolar[0].name);
            update conta;
            System.debug(conta);
        }

    }
    private class Dolar{
        public String ask;
        public String name; 
    }
}
