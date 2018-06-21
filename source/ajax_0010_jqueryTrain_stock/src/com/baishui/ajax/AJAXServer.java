package com.baishui.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AJAXServer extends HttpServlet {
 
	private static final long serialVersionUID = 1L; 
	
	private  HashMap<String, Stock> stocks;
	
	public void destroy() {
		super.destroy();   
	} 
	 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter(); 
		
        double ran1 = Math.random()*20;
        double ran2 = Math.random()*0.5;
        //通过随机数是奇数还是偶数判断涨跌
        boolean flagsz = ((int)(Math.random()*10))%2==0;
        boolean flagpf = ((int)(Math.random()*10))%2==0;
        
        //
        Stock stock1 = stocks.get("3000001");
        Stock stock2 = stocks.get("0000001");
        double temp;
        if(flagsz){
            temp = stock1.getNow()+ran1; 	
        }else{
        	temp = stock1.getNow()-ran1;
        }
        temp=(int)( temp * 100 ) /100.0;
        stock1.setNow(temp);
        
        if(flagpf){
            temp = stock2.getNow()+ran2; 
          }else{
          	temp = stock2.getNow()-ran2;
          }
        temp=(int)( temp * 100 ) / 100.0;
        stock2.setNow(temp); 
 
      
        StringBuilder builder = new StringBuilder();
        
        /**
         * 1.运用json的数据格式 [本质是输出 javascript 声明 数组的语句]
         * 运用 append 拼接字符串效率 比+ 连接效率高
         * [
         *   {name:"上证指数",id:"3000001",yes:3000.0,tod:2990.1,now:2995.9},
         *   {name:"浦发银行",id:"0000001",yes:23.22,tod:23.5,now:23.79}
         * ] 
            builder.append("[{name:\"").append(stock1.getName()).append("\",id:\"").append(stock1.getId())
                       .append("\",yes:").append(stock1.getYesterday()).append(",tod:").append(stock1.getToday()).append(",now:").append(stock1.getNow())
                       .append("},{name:\"").append(stock2.getName()).append("\",id:\"").append(stock2.getId()).append("\",yes:").append(stock2.getYesterday())
                       .append(",tod:").append(stock2.getToday()).append(",now:").append(stock2.getNow()).append("}]");
      
         */
        
       /**2.采用对象的方式 回传两个对象
        * 格式： {
                    3000001:{name:"上证指数",yes:3000.0,tod:2990.1,now:2998.57},
                    0000001:{name:"浦发银行",yes:23.22,tod:23.5,now:23.31}
                }
        */
        builder.append("({\"").append(stock1.getId())
                                  .append("\":{name:\"").append(stock1.getName()).append("\",yes:").append(stock1.getYesterday())
                                  .append(",tod:").append(stock1.getToday()).append(",now:").append(stock1.getNow()).append("},\"")
                        .append(stock2.getId())
                                  .append("\":{name:\"").append(stock2.getName()).append("\",yes:").append(stock2.getYesterday())
                                  .append(",tod:").append(stock2.getToday()).append(",now:").append(stock2.getNow())          
                .append("}})");
        
        out.print(builder.toString());
        //System.out.println(builder.toString());
        
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 this.doPost(req, resp);
	}
	
	
  @Override
   public void init(ServletConfig config) throws ServletException {
	  
	  //应用服务器启动时--初始化
	  stocks = new HashMap<String, Stock>();
	  Stock stock1 = new Stock(3000.0, 2990.1, "上证指数", "3000001");
	  Stock stock2 = new Stock(23.22, 23.50, "浦发银行", "0000001");
	  stocks.put(stock1.getId(), stock1);
	  stocks.put(stock2.getId(), stock2);
	  System.out.println(stocks);
   }
  
}
