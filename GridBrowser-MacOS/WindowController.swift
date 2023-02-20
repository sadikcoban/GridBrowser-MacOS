//
//  WindowController.swift
//  GridBrowser-MacOS
//
//  Created by Sadık Çoban on 20.02.2023.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    
    
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.titleVisibility = .hidden

    }
    

}
