package ru.sbrf.swocm.portlets.calendar;

import java.util.Date;

public class Meeting {
	private String name;
	private String description;
	private Date start;
	private Date end;
	private int priority;
	
	public Meeting() {
		super();
	}
	public Meeting(String name, String description, Date start, Date end, int priority) {
		super();
		this.name = name;
		this.description = description;
		this.start = start;
		this.end = end;
		this.priority = priority;
	}

	public String getStartHour() {
		int hour = start.getHours();
		if (hour < 10)
			return "0" + hour;
		return hour + "";
	}
	
	public int minutes(Date d) {
		int min = d.getMinutes();
		min -= min%15;
		return min;
	}

	public String getStartMinutes() {
		int min = minutes(start);
		if (min < 10)
			return "0" + min;
		return min + "";
	}

	public String getDurationHour() {
		int minutes = end.getHours()*60 + minutes(end) - (start.getHours()*60 + minutes(start));
		return minutes/60 + "";
	}

	public String getDurationMinutes() {
		int minutes = end.getHours()*60 + minutes(end) - (start.getHours()*60 + minutes(start));
		minutes %= 60;
		minutes -= minutes%15;
		if (minutes<10)
			return "0" + minutes;
		return minutes + "";
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	@Override
	public String toString() {
		return "Meeting [name=" + name + ", description=" + description
				+ ", start=" + start + ", end=" + end + ", priority="
				+ priority + "]";
	}
	
	
}