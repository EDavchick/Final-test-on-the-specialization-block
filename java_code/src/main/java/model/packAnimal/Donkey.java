package model.packAnimal;

import model.Animal;
import model.IPackAnimal;
import functional.Date;

public class Donkey extends Animal implements IPackAnimal {
    public Donkey(String name, Date birthday) {
        super(name, birthday);
    }
}
