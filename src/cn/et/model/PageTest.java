package cn.et.model;

public class PageTest {
	public static void main(String[] args) {
		/**
		 * �����ݿ���ȡ������
		 * 
		 */
		int curPage = 2;
		int totalCount = 26;
		int pageCount = 5;
		PageTools pt = new PageTools(curPage, totalCount, pageCount);
		//��һҳ
		System.out.println("��һҳ��"+pt.getPrePage());
		//��һҳ
		System.out.println("��һҳ��"+pt.getNextPage());
		//��ҳ��
		System.out.println("��ҳ����"+pt.getTotalPage());
		//��ʼ����
		System.out.println("��ʼ������"+pt.getStartIndex());
		//��������
		System.out.println("����������"+pt.getEndIndex());
		System.out.println(Integer.parseInt("3"));
	}
}
