package common;

public class Person {
	private String name;
	private int age;
	
	
	public Person() {}
	//기본생성자는 필요없다
	public Person(String name, int age) //필드가 들어있는 생성자
	{
		this.name = name;
		this.age =age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}
}
