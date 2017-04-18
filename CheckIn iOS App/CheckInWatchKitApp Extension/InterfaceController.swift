//
//  InterfaceController.swift
//  CheckInWatchKitApp Extension
//
//  Created by Cliff Panos on 4/15/17.
//  Copyright © 2017 Clifford Panos. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        WC.initialViewController = self
        
        if let loggedIn = UserDefaults.standard.value(forKey: "userIsLoggedIn") as? Bool {
            if !loggedIn {
                self.presentController(withName: "signInNeeded", context: nil)
            }
        }
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        WC.currentlyPresenting = self
    }

    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
