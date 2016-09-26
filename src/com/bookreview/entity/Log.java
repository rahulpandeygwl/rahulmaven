package com.bookreview.entity;

import java.sql.Timestamp;

public class Log {
		private String username;
		private Timestamp timestamp;
		
		public Log() {
			
		}
		
		
		public Log(String username, Timestamp timestamp) {
			super();
			this.username = username;
			this.timestamp = timestamp;
		}


		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public Timestamp getTimestamp() {
			return timestamp;
		}

		public void setTimestamp(Timestamp timestamp) {
			this.timestamp = timestamp;
		}


		@Override
		public String toString() {
			return "Log [username=" + username + ", timestamp=" + timestamp + "]";
		}
		
		
}
