package com.ad.controller;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ad.model.Deposit;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ProducerOPerationsController {
	@Autowired
	private RestTemplate template;
@GetMapping("/")
public String showHome() {
	return "Home";
}
@GetMapping("/services")
public String showServices() {
	return"services";
}
@GetMapping("/add")
public String showDepositPage(@ModelAttribute("dpst") Deposit dpst) {
	return"Deposit_info";
}
@PostMapping("/add")
public String deposit(Map<String,Object> map ,@ModelAttribute("dpst") Deposit dpst) throws Exception {
	//convert object to json data using jackson api
	ObjectMapper mapper=new ObjectMapper();
		String jsonData=mapper.writeValueAsString(dpst);
		//service url
	//	String serviceUrl="http://localhost:9091/ProducerMS-DepositService/deposit";//call to rest api
		String serviceUrl="http://localhost:9100/deposit-api/deposit";//direct call goes to Microservice register in eureka server
		HttpHeaders header=new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity=new HttpEntity<String>(jsonData,header);
		ResponseEntity<String> resp=template.exchange(serviceUrl,HttpMethod.POST,entity,String.class);
		String result=resp.getBody();
		map.put("resultmsg",result);
		String serviceUrl2="http://localhost:9900/MailService/sendMail/{msg}/{email}";//simply calling rest api
		template.exchange(serviceUrl2,HttpMethod.POST, null,String.class,result,dpst.getEmail());//generating mail after deposit 
		return"deposit_status";

}
@GetMapping("/checkBalance")
public String showBalancePage(@ModelAttribute("dpst") Deposit dpst) {
	return"CheckBalance_info";
}
@	PostMapping("/checkBalance")
public String checkBankBalance(@RequestParam("accNo") Long accNo,Map<String,Object> map) throws Exception {
	//service url
		//	String serviceUrl="http://localhost:9091/ProducerMS-CheckBalance/checkBalance/{accNo}";//call to rest api
	         String serviceUrl="http://localhost:9100/CheckBalance-Api/checkBalance/{accNo}";
			ResponseEntity<String> resp=template.exchange(serviceUrl,HttpMethod.POST,null,String.class,accNo);
			//get json body from response
			String jsonbody=resp.getBody();
	      //to sent to jsp page
			map.put("msg", jsonbody);
			return"balance_status";
}
}
