//
//  ViewController.swift
//  FlightLoginScreen
//
//  Created by Miquel Bosch on 23/2/18.
//  Copyright © 2018 Miquel Bosch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameUserTexitInput: KTextField!
    @IBOutlet weak var passwordUserTexitInput: KTextField!
    
    @IBOutlet weak var cloud1: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var cloud3: UIImageView!
    
    @IBOutlet weak var loginButton: KButton!
    
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.frame = CGRect(x: 0.0, y: 0.0, width: 10.0, height: 10.0)
        spinner.startAnimating()
        spinner.alpha = 0.0
        loginButton.addSubview(spinner)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        nameUserTexitInput.center.x -= view.bounds.width
        passwordUserTexitInput.center.x -= view.bounds.width
        
        cloud1.alpha = 0.0
        cloud2.alpha = 0.0
        cloud3.alpha = 0.0
        
        loginButton.center.y += 30.0
        loginButton.alpha = 0.0
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5) {
            self.nameUserTexitInput.center.x += self.view.bounds.width
            UIView.animate(withDuration: 2.9, delay: 0.3,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           
                options: [],
                           animations: {
                            self.passwordUserTexitInput.center.x += self.view.bounds.width
            },
                           completion: nil
            )
            
 
        }
        
        UIView.animate(withDuration: 0.9, delay: 0.3, options: [], animations: {
            self.cloud1.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 0.9, delay: 0.6, options: [], animations: {
            self.cloud2.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 0.9, delay: 0.8, options: [], animations: {
            self.cloud3.alpha = 1
        }, completion: nil)
        
        
        UIView.animate(withDuration: 3.5, delay: 0.5,
                       usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [],
                       animations: {
                        self.loginButton.center.y -= 30.0
                        self.loginButton.alpha = 1.0
        }, completion: nil)
    }
    
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping:
            0.2, initialSpringVelocity: 0.0, options: [], animations: {
                self.loginButton.bounds.size.width += 80.0
        }, completion: nil)
        
        UIView.animate(withDuration: 0.33, delay: 0.0, usingSpringWithDamping:
            0.7, initialSpringVelocity: 0.0, options: [], animations: {
                self.loginButton.center.y += 30.0
        }, completion: nil)
        
        self.loginButton.backgroundColor =
            UIColor(red: 0.85, green: 0.83, blue: 0.45, alpha: 1.0)
        
        self.spinner.center = CGPoint(
            x: 40.0,
            y: self.loginButton.frame.size.height/2
        )
        self.spinner.alpha = 1.0
    }
    

}

