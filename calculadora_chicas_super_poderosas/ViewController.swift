//
//  ViewController.swift
//  calculadora_chicas_super_poderosas
//
//  Created by CEDAM06 on 4/26/19.
//  Copyright © 2019 CDAM06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                                }
    
    
    @IBOutlet weak var respuesta1: UITextField!
    @IBOutlet weak var respuesta2: UITextField!
    @IBOutlet weak var respuesta3: UITextField!
    @IBOutlet weak var respuesta11: UILabel!
    @IBOutlet weak var respuesta22: UILabel!
    @IBOutlet weak var respuesta33: UILabel!
    @IBOutlet weak var resultadototal: UILabel!
    
    @IBAction func boton(_ sender: Any)
    {
        //BURBUJA
        let burbuja1 = Float(respuesta1.text ?? "1")!
        let totalBurbuja = burbuja(cantidad: burbuja1)
        respuesta11.text = String(totalBurbuja)
        //BOMBON
        let bombon1 = Float(respuesta2.text ?? "2")!
        let totalBombon = bombon(cantidad: bombon1)
        respuesta22.text = String(totalBombon)
        //BELLOTA
        let bellota1 = Float(respuesta3.text ?? "1")!
        let totalBellota = bellota(cantidad: bellota1)
        respuesta33.text = String(totalBellota)
        //TOTAL
        let resultadofinal : Float = totalBellota + totalBurbuja + totalBombon
        resultadototal.text = String(resultadofinal)
    }
    
    
    @IBAction func nuevosCalculos(_ sender: Any)
    {
        limpiar()
    }
    
    
    
    
    
    func burbuja (cantidad:Float) -> Float
    {
        let sustanciaX : Float = 500
        let agua : Float = 10
        let glicerina : Float = 1.5
        let jabonPolvo : Float = 18
        let flores : Float = 60
        
        let total : Float = cantidad * (sustanciaX + agua + glicerina + jabonPolvo + flores)
        return total
    }
    
    func bombon (cantidad:Float) -> Float
    {   let sustanciaX : Float = 500
        let agua : Float = 10
        let azucarGlass : Float = 28
        let colorantesVegetales : Float = 0.75
        let grenetina : Float = 20
        
        let total : Float = cantidad * (sustanciaX + agua + azucarGlass + colorantesVegetales + grenetina)

        return total
    }
    
    func bellota (cantidad:Float) -> Float
    {   let sustanciaX : Float = 500
        let agua : Float = 37.85
        let tierra : Float = 24
        let semillas : Float = 125
        let abono : Float = 20
        
        let total : Float = cantidad * (sustanciaX + agua + tierra + semillas + abono)
        
        return total
    }
    
    func limpiar ()
    {
        respuesta1.text = " "
        respuesta2.text = " "
        respuesta3.text = " "
        respuesta11.text = " "
        respuesta22.text = " "
        respuesta33.text = " "
        resultadototal.text = " "
    }

}

