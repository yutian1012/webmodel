package org.ipph.web.model.cpquery;

import org.hibernate.validator.constraints.Email;

import com.sun.istack.internal.NotNull;

public class ApplicationName {
	@Email
	@NotNull
	private String applicantName;

	public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	
}
