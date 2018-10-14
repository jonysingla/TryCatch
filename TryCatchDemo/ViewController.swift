//
//  ViewController.swift
//  TryCatchDemo
//
//  Created by PanshulK on 14/06/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum SandwichError: Error {
        case NotMe
        case DoItYourSelf
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let kitchen = ["sandwich": "ready", "breakfeast": "not ready"]
        
        do
        {
            let sandwich = try makeMeSandwich(name: kitchen)
            print("i want to eat sandwich when its \(sandwich)")
        }
        catch SandwichError.NotMe
        {
            print("crockery is not available")
        }
        catch SandwichError.DoItYourSelf
        {
            print("you can wash crockery first")
        }
        catch let error
        {
            print(error.localizedDescription)
        }
    }
    
    func makeMeSandwich(name: [String : String]) throws -> String
    {
        guard let sandwich = name["sandwich"] else {
//            throw SandwichError.NotMe
            throw SandwichError.DoItYourSelf
        }
        return sandwich
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}





