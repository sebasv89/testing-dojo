package co.com.psl.testingdojo.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PersistenceObject{
	private Map<String, EasyDoctor> doctorList = new HashMap<String, EasyDoctor>();
	private Map<String, EasyPatient> patientList = new HashMap<String, EasyPatient>();
	private Map<String, EasyRoom> roomList = new HashMap<String, EasyRoom>();
	private Map<String, MediumHospital> hospitalList = new HashMap<String, MediumHospital>();
	private Map<String, MediumProfile> profileList = new HashMap<String, MediumProfile>();
	private List<MediumAppointment> appointmentList = new ArrayList<MediumAppointment>();
	
	public PersistenceObject(){}
	
	public Map<String, EasyDoctor> getDoctorList() {
		return doctorList;
	}
	public void setDoctorList(Map<String, EasyDoctor> doctorList) {
		this.doctorList = doctorList;
	}
	public Map<String, EasyPatient> getPatientList() {
		return patientList;
	}
	public void setPatientList(Map<String, EasyPatient> patientList) {
		this.patientList = patientList;
	}
	public Map<String, EasyRoom> getRoomList() {
		return roomList;
	}
	public void setRoomList(Map<String, EasyRoom> roomList) {
		this.roomList = roomList;
	}
	public Map<String, MediumHospital> getHospitalList() {
		return hospitalList;
	}
	public void setHospitalList(Map<String, MediumHospital> hospitalList) {
		this.hospitalList = hospitalList;
	}
	public Map<String, MediumProfile> getProfileList() {
		return profileList;
	}
	public void setProfileList(Map<String, MediumProfile> profileList) {
		this.profileList = profileList;
	}
	public List<MediumAppointment> getAppointmentList() {
		return appointmentList;
	}
	public void setAppointmentList(List<MediumAppointment> appointmentList) {
		this.appointmentList = appointmentList;
	}
}