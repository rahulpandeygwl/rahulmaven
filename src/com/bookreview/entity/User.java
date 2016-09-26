package com.bookreview.entity;

import javax.servlet.http.Cookie;

public class User {

		String username;
		String password;
		public static int visitorCount=0;
		public static Cookie loggedin = new Cookie("loggedIn", "0");
		
		public User() {
			// TODO Auto-generated constructor stub
		}
		
		public User(String username, String password) {
			this.username = username;
			this.password = password;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		@Override
		public String toString() {
			return "User [username=" + username + ", password=" + password + "]";
		}
		
		
}
