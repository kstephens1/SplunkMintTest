//
//  ViewController.swift
//  SplunkMintTest
//
//  Created by Keith Stephens on 06/10/2017.
//  Copyright © 2017 Keith Stephens. All rights reserved.
//

import UIKit
import SplunkMint;

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Mint.sharedInstance().initAndStartSession(withAPIKey: "9d23e112")
    }

    @IBAction func transactionPressed(_ sender: Any) {
        
        let transactionName:String = "TransactionName"
        var transactionID:String;
        
        transactionID = Mint.sharedInstance().transactionStart(transactionName)
        Mint.sharedInstance().transactionStop(transactionID)
        
        transactionID = Mint.sharedInstance().transactionStart(transactionName)
        Mint.sharedInstance().transactionCancel(transactionID, reason: "reason")
                
        print("Transaction Logged ");
        
   }
    
    @IBAction func CrashPressed(_ sender: Any) {
        
        fatalError()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

