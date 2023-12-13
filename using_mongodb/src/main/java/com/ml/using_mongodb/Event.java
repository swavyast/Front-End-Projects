package com.ml.using_mongodb;

public class Event {
    private String title;
    private String location;
    private LocalDateTime dateTime;

    public Event() {}
    public Event(String title, String location, LocalDateTime dateTime) {
        this.title = title;
        this.location = location;
        this.dateTime = dateTime;
    }
    
    
    // standard setters and getters
}
