//
//  ViewControllerSignIn.swift
//  ProyectoSatan
//
//  Created by Claus on 11/11/24.
//

import UIKit

class ViewControllerSignIn: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var numeroDeIntentos = 0
    var segundos = 0
    var timer = Timer()
    
    @IBOutlet weak var botonLogin: UIView!
    
    
    @IBOutlet weak var ingresoCuenta: UITextField!
    
    @IBOutlet weak var ingresoContrasena: UILabel!
    
    @IBAction func ingresoDatos(_ sender: Any) {
        var user = ingresoCuenta.text ?? "0"
        var pass = ingresoContrasena.text ?? "0"
        if (buscadorUsuario(user: user, pass: pass)){
            print("Your credentials don't match. It's probably attributable to human error.")
        }
    }
        
    //Datos para buscador de arreglos
    func buscadorUsuario(user: String, pass: String)-> Bool{
        var posicion = 0
        var tamañoArreglo = arregloUsuario.count
        while(posicion < tamañoArreglo){
            if(user == arregloUsuario[posicion] && pass == arregloContraseña[posicion]){
                posicion = posicion + 1
            }
            posicion = posicion + 1
        }
        return false
    }
    
    func continuar(){
        self.performSegue(withIdentifier: "bienvenido", sender: ViewControllerSignIn.self)
    }
    
    func displayError(){
        var mensaje = "Datos incorrectos"
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination        // Pass the selected object to the new view controller.
    }
    */

}
