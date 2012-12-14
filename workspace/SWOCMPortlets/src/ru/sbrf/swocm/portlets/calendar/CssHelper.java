package ru.sbrf.swocm.portlets.calendar;

public class CssHelper {
	private static final int startMinutes4Css = 8*60;
	private static final int startMinutes = 0;
	private static final int endMinutes = 12*60;

	private static int initStepInPixels = 12;
	
	//¬ысота одного часа 50 пикселей, поэтому дл€ нечетных отрезков добавл€ем 1 пиксель.
	private static int stepInPixels = 12;

	private static final int startTop = -34;
	
	private static final int step4Time = 15;
	
	public static final void main(String[] args) {
		startTimeClasses();
		stepInPixels = initStepInPixels;
		durationClasses();
	}

	private static void startTimeClasses() {
		int currentMinute = startMinutes;
		int top = startTop;
		while(currentMinute <= endMinutes) {
			int time = (currentMinute + startMinutes4Css);
			
			String h = (time/60)<10? ("0" + time/60) : new Integer(time/60).toString();
			String m = (currentMinute%60)==0? "00" : new Integer(currentMinute%60).toString();

			System.out.print(".widget-calendar .start" + h + "h_" + m  + "m { ");
			System.out.print("top: " + top + "px;");
			System.out.println("}");

			currentMinute += step4Time;
			top += step4Pixels();
		}
	}

	private static void durationClasses() {
		int currentMinute = startMinutes;
		int height = 0;
		while(currentMinute < endMinutes) {
			currentMinute += step4Time;
			height += step4Pixels();

			String h = (currentMinute/60)==0 ? "0" : new Integer(currentMinute/60).toString();
			String m = (currentMinute%60)==0 ? "00" : new Integer(currentMinute%60).toString();

			System.out.print(".widget-calendar .duration" + h + "h_" + m + "m { ");
			System.out.print("height: " + (height-6) + "px; ");
			System.out.println("}");
		}
	}

	
	private static int step4Pixels() {
		if (stepInPixels == 12) {
			stepInPixels = 13;
		} else {
			stepInPixels = 12;
		}
		return stepInPixels;
	}

	
}
