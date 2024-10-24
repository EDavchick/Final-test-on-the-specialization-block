package model.pet;

import model.Animal;
import model.IPet;
import functional.Date;

public class Cat extends Animal implements IPet {
    public Cat(String name, Date birthday) {
        super(name, birthday);
    }
}
