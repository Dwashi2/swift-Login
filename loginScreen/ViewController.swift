//
//  ViewController.swift
//  loginScreen
//
//  Created by Daniel Washington Ignacio on 05/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var buttoLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setGradientBackground()
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
        loginInput.layer.cornerRadius = 10
        passwordInput.layer.cornerRadius = 10
        buttoLogin.layer.cornerRadius = 10
    }

    @IBAction func buttonLoginTouch(_ sender: UIButton) {
        
        if self.loginInput.text == "Daniel" &&
            self.passwordInput.text == "00Chico11"{
            self.buttoLogin.setTitle("Correct", for: .normal)
        }else{
            self.buttoLogin.setTitle("Wrong try Again", for: .normal)
        }
        
       
        
    }
    
}

