//
//  Pizza.swift
//  DesignPattern
//
//  Created by 中村 洸貴 on 2019/08/05.
//  Copyright © 2019 中村 洸貴. All rights reserved.
//

import Foundation

protocol Pizza {
    func prepare()
    func bake()
    func cut()
    func box()
    var name: String { get }
}

class CheesePizza: Pizza {
    func prepare() { }
    func bake() { }
    func cut() { }
    func box() { }
    var name = "cheese"
}

class GreekPizza: Pizza {
    func prepare() { }
    func bake() { }
    func cut() { }
    func box() { }
    var name = "greek"
}

class PepperoniPizza: Pizza {
    func prepare() { }
    func bake() { }
    func cut() { }
    func box() { }
    var name = "pepperoni"
}

func orderPizza(_ type: String) -> Pizza {
    var pizza: Pizza! = nil
    
    if type == "cheese" {
        pizza = CheesePizza()
    } else if type == "greek" {
        pizza = GreekPizza()
    } else if type == "pepperoni" {
        pizza = PepperoniPizza()
    }
    
    pizza.prepare()
    pizza.bake()
    pizza.cut()
    pizza.box()
    
    return pizza
}

var cpizza : Pizza = orderPizza("cheese")

var ppizza : Pizza = orderPizza("pepperoni")
