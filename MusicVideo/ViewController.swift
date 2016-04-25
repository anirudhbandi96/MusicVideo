//
//  ViewController.swift
//  MusicVideo
//
//  Created by Bandi Anirudh on 25/04/16.
//  Copyright © 2016 Xlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let api = APIManager()
        
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json" , completion : didLoadData )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func didLoadData(result : String) {
        
        //print(result)
        
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .Default) { (action) -> Void in
         
        }
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)
    
    }

}

