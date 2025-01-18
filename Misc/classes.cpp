#include <iostream>

class Vehicle{
    private:
    int wheels;
    double price;
    double exchangeRate = 100;

    public:
    Vehicle(int n, double myPrice = 1000): wheels(n), price(myPrice){}

    int getNumberOfWheels(){
        return wheels;
    }

    double getPrice(){
        return price*(100/exchangeRate);
    }

    void setExchangeRate(double myExchangeRate){
        exchangeRate = myExchangeRate;
    }
};

int main(){
    Vehicle car(4,50000);
    Vehicle bike(2);
    std::cout << bike.getNumberOfWheels() << std::endl;
    std::cout << car.getNumberOfWheels() << std::endl;
    std::cout << car.getPrice() << std::endl;
    car.setExchangeRate(693.66);
    std::cout << car.getPrice() << std::endl;
    car.setExchangeRate(744.40);
    std::cout << car.getPrice() << std::endl;
    car.setExchangeRate(68.4);
    std::cout << car.getPrice() << std::endl;
    return 0;
}