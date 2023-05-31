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
    
    @IBOutlet var doremi: UILabel!
    @IBOutlet var sandf: UILabel!
    @IBOutlet var lita: UILabel!
    
    // 表示されているボタンのタグを追跡
    var visibleButtonTag: Int?
    
    @IBOutlet var sharp: UIButton!
    @IBOutlet var flat: UIButton!
    @IBOutlet var natural: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doremi.text = "" // ラベルを空白に設定
        sandf.text = ""
        lita.text = ""
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        

        
        let buttons = [abutton, bbutton, cbutton, dbutton, ebutton, fbutton, gbutton, hbutton, ibutton, jbutton, kbutton, lbutton, mbutton, nbutton, obutton, pbutton, qbutton, rbutton, sbutton, tbutton, ubutton, vbutton]

        if let visibleTag = visibleButtonTag, visibleTag == sender.tag {
            // ボタンの背景色を設定
            for button in buttons {
                if button == sender {
                    // 押されたボタンを黒色に変更
                    button?.backgroundColor = UIColor.black
                } else {
                    // 他のボタンを灰色に変更
                    button?.backgroundColor = UIColor.lightGray
                }
            }
        } else {
            // 全てのボタンを灰色に設定
            for button in buttons {
                button?.backgroundColor = UIColor.lightGray
            }
            // 押されたボタンを黒色に変更
            sender.backgroundColor = UIColor.black
        }
    
        if sender == abutton {
            doremi.text = "ド"
            lita.text = ""
        } else if sender == bbutton {
            doremi.text = "ラ"
            lita.text = ""
        } else if sender == cbutton {
            doremi.text = "フ"
            lita.text = "ア"
        } else if sender == dbutton {
            doremi.text = "レ"
            lita.text = ""
        } else if sender == ebutton {
            doremi.text = "シ"
            lita.text = ""
        } else if sender == fbutton {
            doremi.text = "ソ"
            lita.text = ""
        } else if sender == gbutton {
            doremi.text = "ミ"
        } else if sender == hbutton {
            doremi.text = "ド"
            lita.text = ""
        } else if sender == ibutton {
            doremi.text = "ラ"
            lita.text = ""
        } else if sender == jbutton {
            doremi.text = "フ"
            lita.text = "ア"
        } else if sender == kbutton {
            doremi.text = "レ"
            lita.text = ""
        } else if sender == lbutton {
            doremi.text = "シ"
            lita.text = ""
        } else if sender == mbutton {
            doremi.text = "ソ"
            lita.text = ""
        } else if sender == nbutton {
            doremi.text = "ミ"
            lita.text = ""
        } else if sender == obutton {
            doremi.text = "ド"
            lita.text = ""
        } else if sender == pbutton {
            doremi.text = "ラ"
            lita.text = ""
        } else if sender == qbutton {
            doremi.text = "フ"
            lita.text = "ア"
        } else if sender == rbutton {
            doremi.text = "レ"
            lita.text = ""
        } else if sender == sbutton {
            doremi.text = "シ"
            lita.text = ""
        } else if sender == tbutton {
            doremi.text = "ソ"
            lita.text = ""
        } else if sender == ubutton {
            doremi.text = "ミ"
            lita.text = ""
        } else if sender == vbutton {
            doremi.text = "ド"
            lita.text = ""
        }
    }
        
    @IBAction func sharpTapped() {
        //ラベルに反映
        sandf.text = String("#")
        }
    @IBAction func flatTapped() {
        //ラベルに反映
        sandf.text = String("♭")
    }
    @IBAction func naturalTapped() {
        sandf.text = String(" ")
    }
    
    
        
}



