//
//  ViewController.swift
//  GridBrowser-MacOS
//
//  Created by Sadık Çoban on 20.02.2023.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    

    private lazy var rows: NSStackView = {
        let view = NSStackView()
        view.orientation = .vertical
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConsts()
    }
    
    private func addSubviews(){
        view.addSubview(rows)
    }
    
    private func setupConsts(){
        
    }


    func makeWebView() -> NSView {
        let webView = WKWebView()
        webView.navigationDelegate = self
        webView.wantsLayer = true
        webView.load(URLRequest(url: URL(string: "https://www.apple.com")!))
        return webView
    }

}

// MARK: - Toolbar Actions
extension ViewController {
    
    @IBAction func urlEntered(_ sender: NSTextField) {
        
    }
    
    @IBAction func navigationClicked(_ sender: NSSegmentedControl) {
        
    }
    
    @IBAction func adjustRows(_ sender: NSSegmentedControl) {
        
    }
    
    @IBAction func adjustColumns(_ sender: NSSegmentedControl) {
        
    }
}

extension ViewController: WKNavigationDelegate {
    
}
