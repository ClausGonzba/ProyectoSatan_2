//
//  CreateANewAccount.swift
//  ProyectoSatan
//
//  Created by Claus on 30/10/24.
//

import UIKit
var arregloUsuario = ["Viktor", "Jinx", "Vi", "Satan"]
var arregloContraseña = ["0117030114", "1369", "0401", "123456"]

class CreateANewAccount: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtom(_ destination: lastlogx ) {
    }
    
    @IBOutlet var crearUser: UITextField!
    @IBOutlet var crearPass: UITextField!
    
    
    
    @IBAction func crearCuentaBoton(_ sender: Any) {
        
        var usuarioNuevo = crearUser.text ?? ""
        var contraseñaNueva = crearPass.text ?? "0"
        
        if(buscadorUsuario(user: usuarioNuevo, pass: contraseñaNueva)){
            
        }else{
            if(usuarioNuevo != "" && contraseñaNueva != ""){
                arregloUsuario.append(usuarioNuevo)
                arregloContraseña.append(contraseñaNueva)
                
            }else{
                //mensaje
            }
            
        }
        
    }//final de CrearCuentaBoton
    
    
    
    func displayExito(){
        var mensaje = "Tu usuario fue exitosamente guardado"
        let alert = UIAlertController(title: "", message: mensaje, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "ok", style: .default, handler: AyudaErrorRegistro(_action:))
        alert.addAction(dismissAction)
        
        present(alert, animated: true, completion: nil)
    }
    func AyudaErrorRegistro(_action: UIAlertAction){
        crearUser.text = ""
        crearPass.text = ""
    }
    
    
    
    func displayRepetido(){
        var mensaje = "Username is taken"
        let alert = ""
    }
    
    func buscadorUsuario (user: String, pass: String)-> Bool{
        var posicion = 0
        var tamañoArreglo = arregloUsuario.count
        while(posicion < tamañoArreglo){
            if(user == arregloUsuario[posicion]){
                return true
            }
            posicion = posicion + 1
        }
        return false
    }//llaves buscador usuario
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    }

