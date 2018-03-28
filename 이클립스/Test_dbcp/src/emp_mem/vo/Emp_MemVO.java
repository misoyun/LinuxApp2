package emp_mem.vo;

public class Emp_MemVO {

	private String name;
	private String dept;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "이름 : " + name + " 부서: " + dept;
	}
	
	
	
	
}
