package model.pet;

import model.Animal;
import model.IPet;
import functional.Date;

public class Dog extends Animal implements IPet {
    public Dog(String name, Date birthday) {
        super(name, birthday);
    }
}
