//
//  LoginViewController.swift
//  examen2EvalEjerc1Di
//
//  Created by Montacer El Fazazi on 09/02/2024.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func btnLogin(_ sender: Any) {
        if let email = txtEmail.text, let password = txtPassword.text{
            Auth.auth().signIn(withEmail: email, password: password){
                (result, error) in
                if let res = result, error == nil{
                    self.navigationController?.popViewController(animated: true)
                }else{
                    let alert = UIAlertController(title: "error", message: "error en el login", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "aceptar", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    

    @IBAction func btnRegister(_ sender: Any) {
        if let email = txtEmail.text, let password = txtPassword.text{
            Auth.auth().createUser(withEmail: email, password: password){
                (result, error) in
                if let res = result, error == nil{
                    self.navigationController?.popViewController(animated: true)
                }else{
                    let alert = UIAlertController(title: "error", message: "error en el login", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "aceptar", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }    }
}
