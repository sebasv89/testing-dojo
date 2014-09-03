package co.com.psl.testingdojo.domain;

public class EasyRoom {
	private String roomNumber;
	private String roomType;
	private Boolean isDoubleRoom;
	private Boolean hasDirecTV;
	
	public EasyRoom(){}

	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public Boolean getIsDoubleRoom() {
		return isDoubleRoom;
	}

	public void setIsDoubleRoom(Boolean isDoubleRoom) {
		this.isDoubleRoom = isDoubleRoom;
	}

	public Boolean getHasDirecTV() {
		return hasDirecTV;
	}

	public void setHasDirecTV(Boolean hasDirecTV) {
		this.hasDirecTV = hasDirecTV;
	}
	
}
