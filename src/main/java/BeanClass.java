
public class BeanClass {
	 private int studentID;
	    private String studentName;
	    private String studentPaswword; // iniliziated all the variables in private 
	    private String mobile;
	    private String email;
	    
	    public BeanClass(int studentID, String studentName, String studentPaswword, String mobile, String email) {
			super();
			this.studentID = studentID;
			this.studentName = studentName;
			this.studentPaswword = studentPaswword;
			this.mobile = mobile;
			this.email = email;
		}
	    

	    public BeanClass(String studentName, String studentPaswword, String mobile, String email) {
			super();
			this.studentName = studentName;
			this.studentPaswword = studentPaswword;
			this.mobile = mobile;
			this.email = email;
		}


		public void setStudentId(int studentID) { // created a setter method and given parameter 
	        this.studentID = studentID; // used this keyword to refer the current object of the class
	    }

	    public void setStudentName(String studentName) {
	        this.studentName = studentName;
	    }

	    public void setStudentPassword(String studentPassword) {
	        this.studentPaswword = studentPassword;
	    }


	    public void setMobile(String mobile) {
	        this.mobile = mobile;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public int getStudentId() {   // created a getter method and given parameter 
	        return studentID; // returning the value.
	    }

	    public String getStudentName() {
	        return studentName;
	    }

	    public String getStudentPassword() {
	        return studentPaswword;
	    }
	 

	    public String getMobile() {
	        return mobile;
	    }

	    public String getEmail() {
	        return email;
	    }

		

}
