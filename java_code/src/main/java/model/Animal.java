package model;

import functional.Date;

import java.util.ArrayList;
import java.util.List;

public abstract class Animal {
    protected String name, type;
    protected Date birthday;
    protected List<String> commands;

    public Animal(String name, Date birthday) {
        this.name = name;
        this.birthday = birthday;
        this.commands = new ArrayList<>();
        this.type = this.getClass().getSimpleName();
    }

    public String getName() {
        return name;
    }

    public List<String> getCommands() {
        return commands;
    }

    public boolean learnNewCommands(String command) {
        return this.commands.add(command);
    }

    @Override
    public String toString() {
        return "Animal: {" +
                "name='" + name + '\'' +
                ", birthday=" + birthday +
                ", commands=" + commands +
                ", type='" + type + '\'' +
                '}';
    }

//    @Override
//    public boolean equals(Object object) {
//        Animal animal = (Animal) object;
//        return this.equals(animal.name) &&
//                this.equals(animal.birthday) &&
//                this.equals(animal.commands) &&
//                this.equals(animal.type);
//    }
}
