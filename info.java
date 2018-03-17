package HW7;

public class info {

		private String A;
		private String B;
		
		
		public String getUsername() {
			return A;
		}
		public void setUsername(String C) {
			this.A = C;
		}
		public String getPassword() {
			return B;
		}
		public void setPassword(String D) {
			this.B = D;
		}
		
		public String toString(){
			return "User[ User_Name : "+ getUsername()+ " Password : " + getPassword();
		}
	}


