public class SendProjectApi {
    @future (callout = true)
    public static void sendProject(){
        HTTP http = new HTTP();
        httpRequest Request = new httpRequest();
        Request.setMethod('PUT');
        Request.setEndPoint('https://run.mocky.io/v3/e61d7a35-d227-49e5-b5e5-7e0e2fdcee2d');
        String payload = '{"name" : "Topi","code" : "2424232","status" : "Iniciado","startDate" : "2020-01-01","endDate" : "2020-12-01","budget" : 200000.00}';
        Request.setBody(payload);
        httpResponse response = http.send(Request);    
        if(response.getStatusCode() == 200){
		System.debug('Falta a parte da atribuição depois do retorno do status da api');
        }
    }
    
    public static ProjectApi deserializeJson(String json){
        return (ProjectApi) System.JSON.deserialize(json, ProjectApi.class);        
    }
    
    public class ProjectApi{
        public String projectId;
        public String externalId;
    }
}