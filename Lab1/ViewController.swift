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
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(versionLabel)
        
        versionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        versionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        guard let revisionNumber = Bundle.main.releaseVersionNumber else {
//            return
//        }
        let revisionNumber = Bundle.main.releaseVersionNumberPretty
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        versionLabel.text = "Revision number: \(revisionNumber)"
    }
}

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    var releaseVersionNumberPretty: String {
        return "v\(releaseVersionNumber ?? "1.0.0")"
    }
}
