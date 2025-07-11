//
//  signup.swift
//  STORY
//
//  Created by student on 09/07/25.
//

import UIKit
import FirebaseAuth

class signup: UIViewController {

    @IBOutlet weak var passwordtext: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupp(_ sender: UIButton) {
        
        if let email = emailtext.text , let password = passwordtext.text
        {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                // ...
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: "signuphome", sender: self)
                }
            }
            
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
