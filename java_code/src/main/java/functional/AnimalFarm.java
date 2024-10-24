package functional;

import model.Animal;
import model.packAnimal.Camel;
import model.packAnimal.Donkey;
import model.packAnimal.Horse;
import model.pet.Cat;
import model.pet.Dog;
import model.pet.Hamster;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class AnimalFarm {
    // Добавление нового животного
    public Animal createNewAnimal(int whichTypeAnimal, List<String> animal) {
        try (Counter counter = new Counter()) {
            counter.add();
        } catch (IOException e) {
            System.out.println("Error counter...");
            e.printStackTrace();
        }

        List<String> date = Arrays.asList(animal.get(1).split("\\."));
        int day = Integer.parseInt(date.get(0));
        int month = Integer.parseInt(date.get(1));
        int year = Integer.parseInt(date.get(2));

        if (whichTypeAnimal == 1) {
            return new Cat(animal.get(0), new Date(day, month, year));
        } else if (whichTypeAnimal == 2) {
            return new Dog(animal.get(0), new Date(day, month, year));
        } else if (whichTypeAnimal == 3) {
            return new Hamster(animal.get(0), new Date(day, month, year));
        } else if (whichTypeAnimal == 4) {
            return new Camel(animal.get(0), new Date(day, month, year));
        } else if (whichTypeAnimal == 5) {
            return new Donkey(animal.get(0), new Date(day, month, year));
        } else return new Horse(animal.get(0), new Date(day, month, year));
    }
}
