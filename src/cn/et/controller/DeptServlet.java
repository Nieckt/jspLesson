package cn.et.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.parsers.IntegratedParserConfiguration;

import cn.et.model.MyDept;
import cn.et.model.PageTools;

/**
 * Servlet是MVC设计模式的控制层（Controller）负责调度（javabean的创建  服务调用）
 * Servlet implementation class DeptServlet
 */
public class DeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptServlet() {
        super();
    }
    //通过数据库把数据拿出来 负责javabean的模型管理
    MyDept myDept = new MyDept();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//获取查询的参数
			String name = request.getParameter("dname");
			String curPage = request.getParameter("curPage");
			//request.getParameter("curPage")
			Integer curPageInt = 1;
			if(curPage != null) {
				curPageInt = Integer.parseInt(curPage);
			}
			//查询数据
			PageTools tableList = myDept.getTableListPage(name, curPageInt);
			//设置到request作用域中
			request.setAttribute("tableList", tableList);
			//将数据传到页面 
			//请求转发
			request.getRequestDispatcher("/lesson06/deptView.jsp").forward(request, response);;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		this.doGet(request, response);
	}

}
