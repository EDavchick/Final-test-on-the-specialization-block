package model.packAnimal;

import model.Animal;
import model.IPackAnimal;
import functional.Date;

public class Camel extends Animal implements IPackAnimal {
    public Camel(String name, Date birthday) {
        super(name, birthday);
    }
}
