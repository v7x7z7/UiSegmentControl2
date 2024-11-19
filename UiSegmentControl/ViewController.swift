//
//  ViewController.swift
//  UiSegmentControl
//
//  Created by vv 77 on 19/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentControl = UISegmentedControl()
    var menuArray = ["Обзор", "График", "Котировки"]
    
    var imageView = UIImageView()
    
    let imageArray = [UIImage(named: "1st.jpg"),
                      UIImage(named: "2nd.jpg"),
                      UIImage(named: "3rd.jpg")]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //image
        self.imageView.frame = CGRect(x: 0, y: 0, width: 400, height: 730)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(self.imageView)
        
        // create segment
        self.segmentControl = UISegmentedControl(items: self.menuArray)
        self.segmentControl.frame = CGRect(x: 100, y: 800, width: 230, height: 20)
        // Do any additional setup after loading the view.
        self.view.addSubview(self.segmentControl)
        
        self.segmentControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.segmentControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
            
            let pr = target.titleForSegment(at: segmentIndex)
            print(pr ?? "")
        }
    }


}

