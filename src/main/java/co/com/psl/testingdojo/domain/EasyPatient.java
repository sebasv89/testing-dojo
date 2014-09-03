package co.com.psl.testingdojo.domain;

public class EasyPatient {
	private String name;
	private String lastName;
	private String telephone;
	private String identificationType;
	private String identification;
	private Boolean hasPrepaid;
	
	public EasyPatient(){}

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

	public String getIdentificationType() {
		return identificationType;
	}

	public void setIdentificationType(String identificationType) {
		this.identificationType = identificationType;
	}

	public String getIdentification() {
		return identification;
	}

	public void setIdentification(String identification) {
		this.identification = identification;
	}
	
	public Boolean getHasPrepaid() {
		return hasPrepaid;
	}

	public void setHasPrepaid(Boolean hasPrepaid) {
		this.hasPrepaid = hasPrepaid;
	}
}
