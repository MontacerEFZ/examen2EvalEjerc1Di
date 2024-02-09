//
//  ViewController.swift
//  examen2EvalEjerc1Di
//
//  Created by Montacer El Fazazi on 09/02/2024.
//

import UIKit
import Alamofire
import FirebaseAuth

class ViewController: UIViewController, UITextViewDelegate, UITableViewDataSource {


    @IBOutlet weak var btnLogout: UIBarButtonItem!
    @IBOutlet weak var tablaCoins: UITableView!
    
    var listaCoins: [Coin]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaCoins = []
        self.btnLogout.isEnabled = false
        comprobarLogin()
    }
    
    func comprobarLogin(){
        if let user = Auth.auth().currentUser{
            self.btnLogout.isEnabled = true
            cargarCoins()
        }else{
            let ventana = self.storyboard?
                .instantiateViewController(identifier: "LOGIN") as! LoginViewController
            self.navigationController?.pushViewController(ventana, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaCoins.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! CeldaTableViewCell
        
        celda.lbSymbol.text = listaCoins[indexPath.row].symbol
        celda.lbName.text = listaCoins[indexPath.row].name
        celda.lbPrice.text = listaCoins[indexPath.row].priceUsd
        celda.lbExplorer.text = listaCoins[indexPath.row].explorer
        
        return celda
    }
    


    @IBAction func btnLogout(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            comprobarLogin()
        }catch{
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.btnLogout.isEnabled = false
        if let user = Auth.auth().currentUser{
            self.btnLogout.isEnabled = true
        }
    }
    
    func cargarCoins(){
        apiconexiones.api.getCoins(){
            respuesta in
            
            self.listaCoins = respuesta
            print(self.listaCoins.count)
            self.tablaCoins.reloadData()
        }failure: {
            error in
            print(error.debugDescription)
        }
        
    }
}

