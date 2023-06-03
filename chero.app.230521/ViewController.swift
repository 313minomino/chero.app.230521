//
//  ViewController.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        44
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath)
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var sharpgaTapped: Bool = false
    var flatgaTapped: Bool = false
    var selectedButtonTag: Int?
    var konooto = 0
    
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
    
    @IBOutlet var sharp: UIButton!
    @IBOutlet var flat: UIButton!
    @IBOutlet var natural: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doremi.text = "" // ラベルを空白に設定
        sandf.text = ""
        lita.text = ""
    }
    
    @IBAction func back(sender: UIStoryboardSegue) {
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let buttons = [bbutton, cbutton, dbutton, ebutton, fbutton, gbutton, hbutton, ibutton, jbutton, kbutton, mbutton, nbutton, obutton, pbutton, qbutton, rbutton, sbutton, tbutton, ubutton, vbutton]
        
        if let selectedTag = selectedButtonTag, selectedTag == sender.tag {
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
        
        if sender == bbutton {
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
            lita.text = ""
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
        
        
        if sender == vbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 1
        } else if sender == kbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 3
        } else if sender == ubutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 5
        } else if sender == jbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 6
        } else if sender == tbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 8
        } else if sender == ibutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 10
        } else if sender == sbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 12
        } else if sender == hbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 13
        } else if sender == rbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 15
        } else if sender == gbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 17
        } else if sender == qbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 18
        } else if sender == fbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 20
        } else if sender == pbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 22
        } else if sender == ebutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 24
        } else if sender == obutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 25
        } else if sender == dbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 27
        } else if sender == nbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 29
        } else if sender == cbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 30
        } else if sender == mbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 32
        } else if sender == bbutton && sharpgaTapped == false && flatgaTapped == false {
            konooto = 33
            
        } else if sender == kbutton && flatgaTapped == true {
            konooto = 2
        } else if sender == ubutton && flatgaTapped == true {
            konooto = 4
        } else if sender == jbutton && flatgaTapped == true {
            konooto = 5
        } else if sender == tbutton && flatgaTapped == true {
            konooto = 7
        } else if sender == ibutton && flatgaTapped == true {
            konooto = 9
        } else if sender == sbutton && flatgaTapped == true {
            konooto = 11
        } else if sender == hbutton && flatgaTapped == true {
            konooto = 12
        } else if sender == rbutton && flatgaTapped == true {
            konooto = 14
        } else if sender == gbutton && flatgaTapped == true {
            konooto = 16
        } else if sender == qbutton && flatgaTapped == true {
            konooto = 17
        } else if sender == fbutton && flatgaTapped == true {
            konooto = 19
        } else if sender == pbutton && flatgaTapped == true {
            konooto = 21
        } else if sender == ebutton && flatgaTapped == true {
            konooto = 23
        } else if sender == obutton && flatgaTapped == true {
            konooto = 24
        } else if sender == dbutton && flatgaTapped == true {
            konooto = 26
        } else if sender == nbutton && flatgaTapped == true {
            konooto = 28
        } else if sender == cbutton && flatgaTapped == true {
            konooto = 29
        } else if sender == mbutton && flatgaTapped == true {
            konooto = 31
        } else if sender == bbutton && flatgaTapped == true {
            konooto = 32
            
        } else if sender == vbutton && sharpgaTapped == true {
            konooto = 2
        } else if sender == kbutton && sharpgaTapped == true {
            konooto = 4
        } else if sender == ubutton && sharpgaTapped == true {
            konooto = 6
        } else if sender == jbutton && sharpgaTapped == true {
            konooto = 7
        } else if sender == tbutton && sharpgaTapped == true {
            konooto = 9
        } else if sender == ibutton && sharpgaTapped == true {
            konooto = 11
        } else if sender == sbutton && sharpgaTapped == true {
            konooto = 13
        } else if sender == hbutton && sharpgaTapped == true {
            konooto = 14
        } else if sender == rbutton && sharpgaTapped == true {
            konooto = 16
        } else if sender == gbutton && sharpgaTapped == true {
            konooto = 18
        } else if sender == qbutton && sharpgaTapped == true {
            konooto = 19
        } else if sender == fbutton && sharpgaTapped == true {
            konooto = 21
        } else if sender == pbutton && sharpgaTapped == true {
            konooto = 23
        } else if sender == ebutton && sharpgaTapped == true {
            konooto = 25
        } else if sender == obutton && sharpgaTapped == true {
            konooto = 26
        } else if sender == dbutton && sharpgaTapped == true {
            konooto = 28
        } else if sender == nbutton && sharpgaTapped == true {
            konooto = 30
        } else if sender == cbutton && sharpgaTapped == true {
            konooto = 31
        } else if sender == mbutton && sharpgaTapped == true {
            konooto = 32
        }
        
    }
        
        @IBAction func sharpTapped() {
            //ラベルに反映
            sandf.text = String("#")
            sharpgaTapped = true
            flatgaTapped = false
        }
        @IBAction func flatTapped() {
            //ラベルに反映
            sandf.text = String("♭")
            flatgaTapped = true
            sharpgaTapped = false
        }
        @IBAction func naturalTapped() {
            sandf.text = String(" ")
            sharpgaTapped = false
            flatgaTapped = false
            
        }

    //次の画面に値を渡す処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //次の画面を変数化する
        let ViewController2 = segue.destination as! ViewController2

        //渡したい変数を書く
        ViewController2.konooto2 = konooto


    }
    
    }
    

