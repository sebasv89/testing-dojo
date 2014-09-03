package co.com.psl.testingdojo.domain;

public class MediumProfile {
	private String name;
	private String lastName;
	private String telephone;
	private String [] diseaseHistory;
	private String identification;
	private String profileImage;
	
	public MediumProfile(){}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String[] getDiseaseHistory() {
		return diseaseHistory;
	}

	public void setDiseaseHistory(String[] diseaseHistory) {
		this.diseaseHistory = diseaseHistory;
	}

	public String getIdentification() {
		return identification;
	}

	public void setIdentification(String identification) {
		this.identification = identification;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	
}
