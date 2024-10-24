package model.packAnimal;

import model.Animal;
import model.IPackAnimal;
import functional.Date;

public class Horse extends Animal implements IPackAnimal {

    public Horse(String name, Date birthday) {
        super(name, birthday);
    }
}
