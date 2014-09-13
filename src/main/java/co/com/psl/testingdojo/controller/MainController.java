package co.com.psl.testingdojo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import co.com.psl.testingdojo.domain.EasyDoctor;
import co.com.psl.testingdojo.domain.EasyPatient;
import co.com.psl.testingdojo.domain.EasyRoom;
import co.com.psl.testingdojo.domain.MediumAppointment;
import co.com.psl.testingdojo.domain.MediumHospital;
import co.com.psl.testingdojo.domain.MediumProfile;
import co.com.psl.testingdojo.domain.PersistenceObject;

@Controller
public class MainController {
	
	private final static Map<String, PersistenceObject> persistenceObjectMap = new HashMap<String, PersistenceObject>();
	
	@Autowired  
    private MessageSource messageSource;
	
	@RequestMapping({"{username}/home", "{username}/index.html", "{username}/"})
	public ModelAndView getHomePage(){
		return new ModelAndView("home");
	}
	
	//resetVariables
	// EASY PAGES
	@RequestMapping("{username}/resetVariables")
	public ModelAndView resetVariables(@PathVariable(value="username") String username){
		persistenceObjectMap.get(username).getDoctorList().clear();
		persistenceObjectMap.get(username).getPatientList().clear();
		persistenceObjectMap.get(username).getRoomList().clear();
		persistenceObjectMap.get(username).getHospitalList().clear();
		persistenceObjectMap.get(username).getProfileList().clear();
		persistenceObjectMap.get(username).getAppointmentList().clear();
		return new ModelAndView("home");
	}
	
	
	// EASY PAGES
	@RequestMapping("{username}/addDoctor")
	public ModelAndView getaddDoctorPage(){
		return new ModelAndView("addDoctor");
	}
	
	@RequestMapping(value = "{username}/addDoctor", method = RequestMethod.POST)
	public ModelAndView postaddDoctorPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		EasyDoctor doctor = new EasyDoctor();
		doctor.setName(request.getParameter("name"));
		doctor.setLastName(request.getParameter("last_name"));
		doctor.setTelephone(request.getParameter("telephone"));
		doctor.setIdentification(request.getParameter("identification"));
		doctor.setIdentificationType(request.getParameter("identification_type"));
		model.addAttribute("doctor", doctor);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(doctor.getName())){
			errorList.add(messageSource.getMessage("add_generic.name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(doctor.getLastName())){
			errorList.add(messageSource.getMessage("add_generic.last_name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(doctor.getIdentification())){
			errorList.add(messageSource.getMessage("add_generic.identification_required", null, null)) ;
		}
		if(doctor.getIdentification() != null && persistenceObjectMap.get(username).getDoctorList().get(doctor.getIdentification()) != null){
			errorList.add(messageSource.getMessage("add_generic.identification_duplicated", null, null)) ;
		}else if(doctor.getIdentification() != null && errorList.size() == 0){
			persistenceObjectMap.get(username).getDoctorList().put(doctor.getIdentification(), doctor);
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("addDoctorResult");
	}
	
	@RequestMapping("{username}/addPatient")
	public ModelAndView getaddPatientPage(){
		return new ModelAndView("addPatient");
	}
	
	@RequestMapping(value = "{username}/addPatient", method = RequestMethod.POST)
	public ModelAndView postaddPatientPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		EasyPatient patient = new EasyPatient();
		patient.setName(request.getParameter("name"));
		patient.setLastName(request.getParameter("last_name"));
		patient.setTelephone(request.getParameter("telephone"));
		patient.setIdentification(request.getParameter("identification"));
		patient.setIdentificationType(request.getParameter("identification_type"));
		patient.setHasPrepaid((request.getParameter("prepaid") != null && request.getParameter("prepaid").equals("true"))? true: false);
		model.addAttribute("patient", patient);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(patient.getName())){
			errorList.add(messageSource.getMessage("add_generic.name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(patient.getLastName())){
			errorList.add(messageSource.getMessage("add_generic.last_name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(patient.getIdentification())){
			errorList.add(messageSource.getMessage("add_generic.identification_required", null, null)) ;
		}
		if(patient.getIdentification() != null && persistenceObjectMap.get(username).getPatientList().get(patient.getIdentification()) != null){
			errorList.add(messageSource.getMessage("add_generic.identification_duplicated", null, null)) ;
		}else if(patient.getIdentification() != null && errorList.size() == 0){
			persistenceObjectMap.get(username).getPatientList().put(patient.getIdentification(), patient);
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("addPatientResult");
	}
	
	@RequestMapping("{username}/addRoom")
	public ModelAndView getaddRoomPage(){
		return new ModelAndView("addRoom");
	}
	
	@RequestMapping(value = "{username}/addRoom", method = RequestMethod.POST)
	public ModelAndView postAddRoomPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		EasyRoom room = new EasyRoom();
		room.setRoomNumber(request.getParameter("roomNumber"));
		room.setRoomType(request.getParameter("roomType"));
		room.setIsDoubleRoom(Boolean.valueOf(request.getParameter("isDoubleRoom")));
		room.setHasDirecTV(Boolean.valueOf(request.getParameter("hasDirecTV")));
		model.addAttribute("room", room);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(room.getRoomNumber())){
			errorList.add(messageSource.getMessage("add_room.room_number_required", null, null)) ;
		}
		if(room.getRoomNumber() != null && persistenceObjectMap.get(username).getRoomList().get(room.getRoomNumber()) != null){
			errorList.add(messageSource.getMessage("add_room.room_number_duplicated", null, null)) ;
		}else if(room.getRoomNumber() != null && errorList.size() == 0){
			persistenceObjectMap.get(username).getRoomList().put(room.getRoomNumber(), room);
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("addRoomResult");
	}
	
	@RequestMapping("{username}/doctorList")
	public ModelAndView getdoctorListPage(@PathVariable(value="username") String username, ModelMap model){
		model.addAttribute("doctorList", persistenceObjectMap.get(username).getDoctorList());
		return new ModelAndView("doctorList");
	}
	
	// MEDIUM PAGES
	@RequestMapping("{username}/addHospital")
	public ModelAndView getAddHospitalPage(ModelMap model){
		return new ModelAndView("addHospital");
	}
	
	
	@RequestMapping(value = "{username}/removeHospital", method = RequestMethod.DELETE)
	public @ResponseBody String removeHospitalPage(@PathVariable(value="username") String username, @RequestParam(required = true) String code, ModelMap model){
		if(persistenceObjectMap.get(username).getHospitalList().get(code) != null){
			persistenceObjectMap.get(username).getHospitalList().remove(code);
		}
		return "";
	}
	
	@RequestMapping(value = "{username}/addHospital", method = RequestMethod.POST)
	public ModelAndView postAddHospitalPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		MediumHospital hospital = new MediumHospital();
		hospital.setCode(request.getParameter("code"));
		hospital.setName(request.getParameter("name"));
		hospital.setAddress(request.getParameter("address"));
		hospital.setTelephone(request.getParameter("telephone"));
		hospital.setDepartment(request.getParameter("department"));
		hospital.setMunicipality(request.getParameter("municipality"));
		model.addAttribute("hospital", hospital);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(hospital.getCode())){
			errorList.add(messageSource.getMessage("add_hospital.code_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(hospital.getName())){
			errorList.add(messageSource.getMessage("add_generic.name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(hospital.getAddress())){
			errorList.add(messageSource.getMessage("add_generic.address_required", null, null)) ;
		}
		if(hospital.getCode() != null && persistenceObjectMap.get(username).getHospitalList().get(hospital.getCode()) != null){
			errorList.add(messageSource.getMessage("add_hospital.code_duplicated", null, null)) ;
		}else if(hospital.getCode() != null && errorList.size() == 0){
			persistenceObjectMap.get(username).getHospitalList().put(hospital.getCode(), hospital);
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("addHospitalResult");
	}
	
	
	@RequestMapping("{username}/appointmentScheduling")
	public ModelAndView getAppointmentSchedulingPage(ModelMap model){
		return new ModelAndView("appointmentScheduling");
	}
	
	@RequestMapping(value = "{username}/appointmentScheduling", method = RequestMethod.POST)
	public ModelAndView postAppointmentSchedulingPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		MediumAppointment appointment = new MediumAppointment();
		appointment.setDate(request.getParameter("date"));
		appointment.setDoctorsIdentification(request.getParameter("doctorsIdentification"));
		appointment.setPatientsIdentification(request.getParameter("patientsIdentification"));
		appointment.setNote(request.getParameter("note"));
		model.addAttribute("appointment", appointment);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(appointment.getDate())){
			errorList.add(messageSource.getMessage("add_generic.date_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(appointment.getDoctorsIdentification())){
			errorList.add(messageSource.getMessage("add_generic.identification_required", null, null)) ;
		}else{
			if(persistenceObjectMap.get(username).getDoctorList().get(appointment.getDoctorsIdentification()) == null){
				errorList.add(messageSource.getMessage("add_generic.doctors_identification_not_found", null, null)) ;
			}else{
				model.addAttribute("doctor", persistenceObjectMap.get(username).getDoctorList().get(appointment.getDoctorsIdentification()));
			}
		}
		if (GenericValidator.isBlankOrNull(appointment.getPatientsIdentification())){
			errorList.add(messageSource.getMessage("add_generic.identification_required", null, null)) ;
		}else{
			if(persistenceObjectMap.get(username).getPatientList().get(appointment.getPatientsIdentification()) == null){
				errorList.add(messageSource.getMessage("add_generic.patients_identification_not_found", null, null)) ;
			}else{
				model.addAttribute("patient", persistenceObjectMap.get(username).getPatientList().get(appointment.getPatientsIdentification()));
			}
		}
		if(errorList.size() == 0){
			persistenceObjectMap.get(username).getAppointmentList().add(appointment);
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("appointmentSchedulingResult");
	}
	
	@RequestMapping("{username}/profileConfig")
	public ModelAndView getProfileConfigPage(){
		return new ModelAndView("profileConfig");
	}
	
	@RequestMapping(value = "{username}/profileConfig", method = RequestMethod.POST)
	public ModelAndView postProfileConfigPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		MediumProfile profile = new MediumProfile();
		profile.setDiseaseHistory(request.getParameterValues("diseaseHistory"));
		profile.setName(request.getParameter("name"));
		profile.setLastName(request.getParameter("lastName"));
		profile.setTelephone(request.getParameter("telephone"));
		profile.setIdentification(request.getParameter("identification"));
		profile.setProfileImage(request.getParameter("profileImage"));
		model.addAttribute("profile", profile);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(profile.getName())){
			errorList.add(messageSource.getMessage("add_generic.name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(profile.getIdentification())){
			errorList.add(messageSource.getMessage("add_generic.identification_required", null, null)) ;
		}
		if(profile.getIdentification() != null && persistenceObjectMap.get(username).getProfileList().get(profile.getIdentification()) != null){
			errorList.add(messageSource.getMessage("add_generic.identification_duplicated", null, null)) ;
		}else if(profile.getIdentification() != null && errorList.size() == 0){
			persistenceObjectMap.get(username).getProfileList().put(profile.getIdentification(), profile);
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("profileConfigResult");
	}
	
	// HARD PAGES
	@RequestMapping("{username}/hospitalList")
	public ModelAndView gethospotalListPage(@PathVariable(value="username") String username, ModelMap model){
		model.addAttribute("hospitalList", persistenceObjectMap.get(username).getHospitalList());
		return new ModelAndView("hospitalList");
	}
	
	@RequestMapping("{username}/editHospital")
	public ModelAndView getEditHospitalPage(@PathVariable(value="username") String username, @RequestParam(required = true) String code, ModelMap model){
		if(persistenceObjectMap.get(username).getHospitalList().get(code) == null){
			return new ModelAndView(new RedirectView("addHospital"));
		}
		model.addAttribute("hospital" , persistenceObjectMap.get(username).getHospitalList().get(code));
		return new ModelAndView("editHospital");
	}
	
	@RequestMapping(value = "{username}/editHospital", method = RequestMethod.POST)
	public ModelAndView postEditHospitalPage(@PathVariable(value="username") String username, HttpServletRequest request, ModelMap model){
		MediumHospital hospital = new MediumHospital();
		hospital.setCode(request.getParameter("code"));
		hospital.setName(request.getParameter("name"));
		hospital.setAddress(request.getParameter("address"));
		hospital.setTelephone(request.getParameter("telephone"));
		hospital.setDepartment(request.getParameter("department"));
		hospital.setMunicipality(request.getParameter("municipality"));
		model.addAttribute("hospital", hospital);
		List<String> errorList = new ArrayList<String>();
		if (GenericValidator.isBlankOrNull(hospital.getCode())){
			errorList.add(messageSource.getMessage("add_hospital.code_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(hospital.getName())){
			errorList.add(messageSource.getMessage("add_generic.name_required", null, null)) ;
		}
		if (GenericValidator.isBlankOrNull(hospital.getAddress())){
			errorList.add(messageSource.getMessage("add_generic.address_required", null, null)) ;
		}
		if(hospital.getCode() != null && persistenceObjectMap.get(username).getHospitalList().get(hospital.getCode()) != null && errorList.size() == 0){
			persistenceObjectMap.get(username).getHospitalList().put(hospital.getCode(), hospital);
		}else if(hospital.getCode() != null && persistenceObjectMap.get(username).getHospitalList().get(hospital.getCode()) == null){
			errorList.add(messageSource.getMessage("add_hospital.code_does_not_exist", null, null)) ;
		}
		model.addAttribute("errorList", errorList);
		return new ModelAndView("addHospitalResult");
	}
	
	@RequestMapping(value = "{username}/getDoctorList", method = RequestMethod.GET)
	public @ResponseBody List<String> getDoctorList(@PathVariable(value="username") String username, @RequestParam(required = true) String query, HttpServletRequest request){
		List<String> names = new ArrayList<String>();
		for (EasyDoctor doctor : persistenceObjectMap.get(username).getDoctorList().values()) {
			if(doctor.getName().toLowerCase().contains(query.toLowerCase())){
				names.add(doctor.getName());
			}
		}
		return names;
	}
	
	@RequestMapping("{username}/searchDoctor")
	public ModelAndView getSearchDoctorPage(@PathVariable(value="username") String username, @RequestParam(required = false) String query, ModelMap model){
		if(query == null){
			query = "";
		}
		List<EasyDoctor> doctors = new ArrayList<EasyDoctor>();
		for (EasyDoctor doctor : persistenceObjectMap.get(username).getDoctorList().values()) {
			if(doctor.getName().toLowerCase().contains(query.toLowerCase())){
				doctors.add(doctor);
			}
		}
		model.addAttribute("doctorList", doctors);
		return new ModelAndView("searchDoctor");
	}
	
	@RequestMapping("{username}/arrangeAppointments")
	public ModelAndView getArrangeAppointmentListPage(@PathVariable(value="username") String username, ModelMap model){
		model.addAttribute("appointmentList", persistenceObjectMap.get(username).getAppointmentList());
		return new ModelAndView("arrangeAppointments");
	}
	
	@RequestMapping( value = "{username}/arrangeAppointments", method = RequestMethod.POST)
	public @ResponseBody String postArrangeAppointmentListPage(@PathVariable(value="username") String username, @RequestBody String[] indexArray){
		if(indexArray.length > 0 || indexArray.length != persistenceObjectMap.get(username).getAppointmentList().size()){
			List<MediumAppointment> newAppointmentList = new ArrayList<MediumAppointment>();
			for (int i = 0; i < indexArray.length; i++) {
				newAppointmentList.add(i, persistenceObjectMap.get(username).getAppointmentList().get(Integer.valueOf(indexArray[i]) - 1));
			}
			persistenceObjectMap.get(username).getAppointmentList().clear();
			persistenceObjectMap.get(username).getAppointmentList().addAll(newAppointmentList);
		}
		return "";
	}
	
	
	@RequestMapping("/error404")
	public ModelAndView getError404Page(){
		return new ModelAndView("instructions");
	}
	


	
	public static Map<String, PersistenceObject> getPersistenceObjectMap() {
		return persistenceObjectMap;
	}

}
