package com.sb.constants;

/**
 * 
 * @author satya60.shekhar@gmail.com
 *
 */
public enum Priority {
	Sever(0),
	Critical(1),
	VeryHigh(2),
    High(3),
    Average(4),
    Midium(5),
    Cusmetic(6),
    Future(7);
    private int value;

    private Priority(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static Priority valueOf(int value) {
        for (Priority priority : values()) {
            if (priority.getValue() == value) {
                return priority;
            }
        }
        return null;
    }
}
