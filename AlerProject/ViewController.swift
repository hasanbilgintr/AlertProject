//
//  ViewController.swift
//  AlerProject
//
//  Created by hasan bilgin on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func singUpButton(_ sender: Any) {
        /*
         //Görünüm oluşturduk
         //başlık error! // mesajı username bot found... görünüm vstili ise ... alert diyebiliriz
         let alert=UIAlertController(title: "Error!", message: "Usernmae not found", preferredStyle: UIAlertController.Style.alert)
         //button stili 3 tane var default ,cancel(iptal için),destructive (silmek için)
         let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
         //ok button clicked
         print("ok button clicked")
         }
         alert.addAction(okButton)
         //görünümü göstermek
         //animasyon olcakmı true dedik
         self.present(alert, animated: true,completion: nil)
         */
        
        if usernameTextField.text==""{
            /*
             let alert=UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
             //let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil) aynı
             let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
             alert.addAction(okButton)
             //self.present(alert, animated: true,completion: nil) aynı
             self.present(alert, animated: true)
             */
            alertFunction(titleInput: "Error", messageInput: "Username not found")
        }else if passwordTextField.text==""{
            /*
             let alert=UIAlertController(title: "Error", message: "Pasword not found", preferredStyle: UIAlertController.Style.alert)
             let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
             alert.addAction(okButton)
             self.present(alert, animated: true)
             */
            alertFunction(titleInput: "Error", messageInput: "Pasword not found")
        }else if passwordTextField.text != passwordAgainTextField.text{
            /*
             let alert=UIAlertController(title: "Error", message: "Password do not match", preferredStyle: UIAlertController.Style.alert)
             let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
             alert.addAction(okButton)
             self.present(alert, animated: true)
             */
            alertFunction(titleInput: "Error", messageInput: "Password do not match")
        }else{
            /*
             let alert=UIAlertController(title: "Success", message: "User OK", preferredStyle: UIAlertController.Style.alert)
             let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
             alert.addAction(okButton)
             self.present(alert, animated: true)
             */
            alertFunction(titleInput: "Success", messageInput: "User OK")
        }
        
        
    }
    
    func alertFunction( titleInput:String, messageInput :String){
        let alert=UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

