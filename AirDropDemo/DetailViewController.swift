//
//  DetailViewController.swift
//  AirDropDemo
//
//  Created by Simon Ng on 18/10/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var webView:UIWebView!
    
    var filename = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Get the full path of the file
        if let fileURL = fileToURL(file: filename) {
            let urlRequest = URLRequest(url: fileURL)
            webView.loadRequest(urlRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fileToURL(file: String) -> URL? {
        // Get the full path of the file
        let fileComponents = file.components(separatedBy: ".")
        
        if let filePath = Bundle.main.path(forResource: fileComponents[0], ofType: fileComponents[1]) {
            return URL(fileURLWithPath: filePath) 
        }
        
        return nil
    }
    
    //MARK: - Actions
    @IBAction func share(sender: UIBarButtonItem) {
        
    }

}
