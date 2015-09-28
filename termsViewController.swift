//
//  termsViewController.swift
//  Carousel
//
//  Created by Claw on 9/28/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class termsViewController: UIViewController {

    @IBOutlet weak var termsWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://www.dropbox.com/terms?mobile=1")
        let request = NSURLRequest(URL: url!)
        termsWebView.loadRequest(request)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneButton(sender: AnyObject) {
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
