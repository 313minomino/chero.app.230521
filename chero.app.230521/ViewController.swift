//
//  ViewController.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var abutton: UIButton!
    @IBOutlet weak var bbutton: UIButton!
    @IBOutlet weak var cbutton: UIButton!
    @IBOutlet weak var dbutton: UIButton!
    @IBOutlet weak var ebutton: UIButton!
    @IBOutlet weak var fbutton: UIButton!
    @IBOutlet weak var gbutton: UIButton!
    @IBOutlet weak var hbutton: UIButton!
    @IBOutlet weak var ibutton: UIButton!
    @IBOutlet weak var jbutton: UIButton!
    @IBOutlet weak var kbutton: UIButton!
    @IBOutlet weak var lbutton: UIButton!
    @IBOutlet weak var mbutton: UIButton!
    @IBOutlet weak var nbutton: UIButton!
    @IBOutlet weak var obutton: UIButton!
    @IBOutlet weak var pbutton: UIButton!
    @IBOutlet weak var qbutton: UIButton!
    @IBOutlet weak var rbutton: UIButton!
    @IBOutlet weak var sbutton: UIButton!
    @IBOutlet weak var tbutton: UIButton!
    @IBOutlet weak var ubutton: UIButton!
    @IBOutlet weak var vbutton: UIButton!
    @IBOutlet weak var wbutton: UIButton!
    
    // 音符ボタンの配列
    var visibleButtonTag: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let buttons = [abutton, bbutton, cbutton, dbutton, ebutton, fbutton, gbutton, hbutton, ibutton, jbutton, kbutton, lbutton, mbutton, nbutton, obutton, pbutton, qbutton, rbutton, sbutton, tbutton, ubutton, vbutton, wbutton]
        
        if visibleButtonTag != nil {
            // 全てのボタンを灰色に設定
            for button in buttons {
                button?.backgroundColor = UIColor.lightGray
            }
            
            // 押されたボタンを黒色に変更
            sender.backgroundColor = UIColor.black
        }
    }
        
    @IBAction func searchButtonTapped() {
            let outputViewController = OutputViewController()
            navigationController?.pushViewController(outputViewController, animated: true)
        }
    }
