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
 * Servlet��MVC���ģʽ�Ŀ��Ʋ㣨Controller��������ȣ�javabean�Ĵ���  ������ã�
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
    //ͨ�����ݿ�������ó��� ����javabean��ģ�͹���
    MyDept myDept = new MyDept();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//��ȡ��ѯ�Ĳ���
			String name = request.getParameter("dname");
			String curPage = request.getParameter("curPage");
			//request.getParameter("curPage")
			Integer curPageInt = 1;
			if(curPage != null) {
				curPageInt = Integer.parseInt(curPage);
			}
			//��ѯ����
			PageTools tableList = myDept.getTableListPage(name, curPageInt);
			//���õ�request��������
			request.setAttribute("tableList", tableList);
			//�����ݴ���ҳ�� 
			//����ת��
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
