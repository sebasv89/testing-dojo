package co.com.psl.testingdojo.domain;

public class MediumAppointment {
	private String date;
	private String doctorsIdentification;
	private String patientsIdentification;
	private String note;
	
	public MediumAppointment(){}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDoctorsIdentification() {
		return doctorsIdentification;
	}

	public void setDoctorsIdentification(String doctorsIdentification) {
		this.doctorsIdentification = doctorsIdentification;
	}

	public String getPatientsIdentification() {
		return patientsIdentification;
	}

	public void setPatientsIdentification(String patientsIdentification) {
		this.patientsIdentification = patientsIdentification;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
}
