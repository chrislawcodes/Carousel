//
//  signinViewController.swift
//  Carousel
//
//  Created by Claw on 9/23/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class signinViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    let emailAlertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
    
    let passwordAlertController = UIAlertController(title: "Password Required", message: "Please enter your password", preferredStyle: .Alert)

    let wrongloginAlertController = UIAlertController(title: "Incorrect Login", message: "Please enter the right email / password", preferredStyle: .Alert)
    // create a cancel action
    let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
        // handle cancel response here. Doing nothing will dismiss the view.
    }
    // add the cancel action to the alertController

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
            emailAlertController.addAction(cancelAction)
            passwordAlertController.addAction(cancelAction)
            wrongloginAlertController.addAction(cancelAction)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkPassword () {
        if (emailTextField.text == "Email") || (emailTextField.text == "") {
            self.presentViewController(emailAlertController, animated: true){
                
            }
        }
        else if (passwordTextField.text == "Password") || (passwordTextField.text == "") {
            self.presentViewController(passwordAlertController, animated: true){
                
            }
            
        }
        else if (emailTextField.text != "chrislaw@gmail") && (passwordTextField.text != "pass"){
            self.presentViewController(wrongloginAlertController, animated: true){
            }
        }
            else{
            performSegueWithIdentifier("signintowelcomeSegue", sender: self)
            }
        }
    

    @IBAction func signinButtonPress(sender: AnyObject) {
        delay(2) {
            self.checkPassword()
        }
    }
    
    
    
    @IBAction func onsigninTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
