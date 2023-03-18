//
//  ViewController.swift
//  SandboxTextField
//
//  Created by Leonardo Gonçalves on 16/03/23.
//

import UIKit

class ViewController: UIViewController{
    
    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
        
    }
}

extension ViewController {
 
    func style() {
        textField.backgroundColor = .systemRed
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self
    }
    
    func layout() {
        view.addSubview(textField)
        NSLayoutConstraint.activate([
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: textField.trailingAnchor),
        ])
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textFields: UITextField) {
        print(textFields.text!)
    }
}


