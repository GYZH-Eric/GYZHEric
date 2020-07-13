package com.zlyx.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.entity.Cpuser;
import com.zlyx.entity.Recruit;

@Controller
public class SolrController {

	@Autowired
	private HttpSolrClient client;
	
	@RequestMapping("solrSearch")
	@ResponseBody
	public List<Recruit> fun2(String rPos,String address) throws Exception{
		System.out.println("text doing-------------");
		SolrQuery query = new SolrQuery();
		query.set("q", "address:"+address);
		query.set("fq", "rPos:"+rPos);
		QueryResponse response = client.query(query);
		SolrDocumentList rlt = response.getResults();
		List<Recruit> sList= new ArrayList<Recruit>();
		for (SolrDocument doc : rlt) {
			Recruit recruit=new Recruit();
			Cpuser cpuser=new Cpuser();
			cpuser.setCpId((Integer)doc.get("cpId"));
			cpuser.setCpName((String) doc.get("cpName"));
			cpuser.setTel((String) doc.get("tel"));
			recruit.setRecId((Integer)doc.get("recId"));
			recruit.setAddress((String) doc.get("address"));
			recruit.setrInfor((String) doc.get("rInfor"));
			recruit.setrPos((String) doc.get("rPos"));
			recruit.setSal((String) doc.get("sal"));
			recruit.setCpuser(cpuser);
			sList.add(recruit);
		    System.out.println(doc.get("cpName")+"---"+doc.get("rInfor"));
		}
		return sList;
	}
	
}
