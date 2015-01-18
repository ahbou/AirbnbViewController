//
//  ViewController.swift
//  AirbnbViewController
//
//  Created by pixyzehn on 1/1/15.
//  Copyright (c) 2015 pixyzehn. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, AirbnbMenuDelegate, AirbnbMenuDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.yellowColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // AirbnbMenuDelegate

    func numberOfSession() -> Int {
        return 2
    }
    
    func numberOfRowsInSession(session: Int) -> Int {
        return 3
    }
    
    func titleForRowAtIndexPath(indexPath: NSIndexPath) -> String {
        return "Row \(indexPath.row) in \(indexPath.section)"
    }
    
    func titleForHeaderAtSession(session: Int) -> String {
        return "Session \(session)"
    }
    
    func viewControllerForIndexPath(indexPath: NSIndexPath) -> UIViewController {
        let viewController: ViewController = ViewController()
        
        let controller: UINavigationController = UINavigationController(rootViewController: viewController)
        
        switch indexPath.row {
        case 0:
            viewController.view.backgroundColor = UIColor.greenColor()
            break
        case 1:
            viewController.view.backgroundColor = UIColor.yellowColor()
            break
        case 2:
            viewController.view.backgroundColor = UIColor.redColor()
            break
        default:
            break
        }
        return controller
    }
    
    func thumbnailImageAtIndexPath(indexPath: NSIndexPath) -> UIImage? {
        return nil
    }
}

