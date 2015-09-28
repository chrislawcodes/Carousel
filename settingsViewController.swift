//
//  settingsViewController.swift
//  Carousel
//
//  Created by Claw on 9/26/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    @IBOutlet weak var settingsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.contentSize = settingsImageView.image!.size


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func oncancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
