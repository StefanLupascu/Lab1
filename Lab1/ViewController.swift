//
//  ViewController.swift
//  Lab1
//
//  Created by Stefan Lupascu on 18/10/2018.
//  Copyright © 2018 Stefan Lupascu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let versionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        print("Hello world!")
        let bla = NewFile()
        
        setupUI()
    }
    
    private func setupUI() {
        let appInfo = getVersion()
        
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        versionLabel.text = appInfo
        versionLabel.numberOfLines = 0
        versionLabel.textAlignment = .center
        
        view.addSubview(versionLabel)
        
        versionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        versionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func getVersion() -> String {
        if let dict = Bundle.main.infoDictionary {
            if let version = dict["CFBundleShortVersionString"] as? String,
                let bundleVersion = dict["CFBundleVersion"] as? String,
                let appName = dict["CFBundleName"] as? String {
                return "You're using \(appName) \nv\(version) (Build \(bundleVersion))."
            }
        }
        return "No version information available!"
    }
}
