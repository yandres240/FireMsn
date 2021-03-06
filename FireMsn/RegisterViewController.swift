//
//  RegisterViewController.swift
//  FireMsn
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 practica. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var lbl_error: UILabel!
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBAction func btn_register(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: txt_email.text!, password: txt_password.text!) {(user,error) in
            if error != nil{
                print(error!)
                self.lbl_error.text = error!.localizedDescription
            }
            else{
                print("Registered")
                self.lbl_error.text = "Registered"
                self.performSegue(withIdentifier: "GoToChat", sender: self)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
