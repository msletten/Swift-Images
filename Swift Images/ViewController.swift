//
//  ViewController.swift
//  Swift Images
//
//  Created by Mat Sletten on 10/24/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    @IBOutlet weak var hockeyFrame: UIImageView!
    
    var frameCounter = 2;
    
    @IBAction func buttonPressed(sender: AnyObject)
    {
        //let frame2 = UIImage(named: "hockey11.png")
        frameCounter++
        if (frameCounter==12)
        {
            frameCounter = 2
        }
        hockeyFrame.image = UIImage(named: "hockey\(frameCounter).png")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews()
    {
        //using our images center we can set an inital starting point for it off the screen. We can also set it's initial alpha for a fade in effect
        //hockeyFrame.center = CGPointMake(hockeyFrame.center.x + 100, hockeyFrame.center.y + 200)
        //hockeyFrame.alpha = 0
        //to change the size of the initial image we can use the following
        hockeyFrame.frame = CGRectMake(100, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool)
    {
        //Using this function, we can animate an image
        UIView.animateWithDuration(2, animations:
            {
                //We can use the following to set an end point for the alpha value and for the position of the final animation (image) position
                //self.hockeyFrame.alpha = 1
                //self.hockeyFrame.center = CGPointMake(self.hockeyFrame.center.x - 150, self.hockeyFrame.center.y - 300)
                //Below we expand the original image size to the final image size with the time variable set above and set a final position for the beginning of the animation
                self.hockeyFrame.frame = CGRectMake(50, 20, 300, 60)
            })
    }

func result()
    {
    frameCounter++
    if (frameCounter==12)
        {
        frameCounter = 2
        }
    hockeyFrame.image = UIImage(named: "hockey\(frameCounter).png")
    }
}



