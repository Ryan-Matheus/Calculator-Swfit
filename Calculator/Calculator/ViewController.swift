//
//  ViewController.swift
//  Calculator
//
//  Created by user on 26/04/23.
//

import UIKit

class ViewController: UIViewController {
       
    @IBOutlet var holder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupNumberPad()
    }

    private func setupNumberPad() {
        let buttonSize: CGFloat = view.frame.size.width / 4
        
        let zeroButton = UIButton(frame: CGRect(x: 0, y: holder.frame.size.height-buttonSize, width: buttonSize*3, height: buttonSize))
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.backgroundColor = .orange
        zeroButton.setTitle("0", for: .normal)
        holder.addSubview(zeroButton)
        
        for x in 0..<3 {
            let button1 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize*2), width: buttonSize, height: buttonSize))
            button1.setTitleColor(.white, for: .normal)
            button1.backgroundColor = .orange
            button1.setTitle("\(x+1)", for: .normal)
            holder.addSubview(button1)
        }
        
        for x in 0..<3 {
            let button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize*3), width: buttonSize, height: buttonSize))
            button2.setTitleColor(.white, for: .normal)
            button2.backgroundColor = .orange
            button2.setTitle("\(x+4)", for: .normal)
            holder.addSubview(button2)
        }
        
        for x in 0..<3 {
            let button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize*4), width: buttonSize, height: buttonSize))
            button3.setTitleColor(.white, for: .normal)
            button3.backgroundColor = .orange
            button3.setTitle("\(x+7)", for: .normal)
            holder.addSubview(button3)
        }
    }
    
}

