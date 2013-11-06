package org.pivotal.gemfire.rest;

import org.springframework.data.annotation.Id;
import org.springframework.data.gemfire.mapping.Region;

/**
 * Created by cblack on 11/1/13.
 */
@Region
public class Sensor{

    @Id
    private long id;
    private double value;
    private long timestamp;
    private String name;

    public Sensor(long id, double value, long timestamp, String name) {
        this.id = id;
        this.value = value;
        this.timestamp = timestamp;
        this.name = name;
    }

    public Sensor(long id) {
        this.id = id;
    }

    public Sensor() {
    }

    public long getId() {
        return id;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
