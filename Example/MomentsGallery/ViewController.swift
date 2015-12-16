//
//  ViewController.swift
//  MomentsGallery
//
//  Created by Melvin Beemer on 11/22/2015.
//  Copyright (c) 2015 Melvin Beemer. All rights reserved.
//

import UIKit
import MomentsGallery

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(frame: CGRectMake(0, self.view.frame.size.height / 2 - 25, self.view.frame.size.width, 50))
        button.setTitle("To Gallery", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "toGalleryButtonTapped", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toGalleryButtonTapped() {
        var moments: [Moment] = []
        
        for var i = 1; i < 4; i++ {
            //let moment = Moment(image: UIImage(named: "\(i).jpg"))
            let moment = Moment(url: "https://static.pexels.com/photos/17587/pexels-photo.jpg")
            moments.append(moment)
        }
        
        let momentsVC = MomentsGallery(moments: moments)
        self.presentViewController(momentsVC, animated: true, completion: nil)
    }

}

