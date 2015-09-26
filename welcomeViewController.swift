//
//  welcomeViewController.swift
//  Carousel
//
//  Created by Claw on 9/25/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var welcomePageControl: UIPageControl!
    
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    @IBOutlet weak var gotutorialButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.contentSize = CGSize(width:1500, height:667)
        welcomeScrollView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// Scrolling functions
    
    func welcomeScrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
    }
    
    func welcomeScrollViewWillBeginDragging(scrollView: UIScrollView!) {
        
    }
    
    func welcomeScrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func welcomeScrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // This method is called when the scrollview finally stops scrolling.
    }
    
    
    func scrollViewDidEndDecelerating(welcomeScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(welcomeScrollView.contentOffset.x / 375))
        
        // Set the current page, so the dots will update
        welcomePageControl.currentPage = page
        if welcomePageControl.currentPage == 3{
            gotutorialButton.alpha = 1
            welcomePageControl.alpha = 0
            
        }
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
