package model.pet;

import model.Animal;
import model.IPet;
import functional.Date;

public class Hamster extends Animal implements IPet {
    public Hamster(String name, Date birthday) {
        super(name, birthday);
    }
}
