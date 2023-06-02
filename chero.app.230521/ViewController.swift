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
    
    
    var selectedButtonTag: Int?
    
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
    
    @IBOutlet var sharp: UIButton!
    @IBOutlet var flat: UIButton!
    @IBOutlet var natural: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doremi.text = "" // ラベルを空白に設定
        sandf.text = ""
        lita.text = ""
        
        // オレンジ色の設定
        let orangeColor = UIColor.orange
        
        // uボタンとsharpボタンが押された場合のセルのindexPath
        let cellIndexPath1 = IndexPath(item: 0, section: 0)
        // uボタンのみが押された場合のセルのindexPath
        let cellIndexPath2 = IndexPath(item: 1, section: 0)
        // tボタンが押された場合のセルのindexPath
        let cellIndexPath3 = IndexPath(item: 3, section: 0)
        // uボタンとsharpボタンかtボタンとflatボタンが押された場合のセルのindexPath
        let cellIndexPath4 = IndexPath(item: 2, section: 0)
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
            
            // ボタンの色を設定するメソッド
            func setButtonColor(_ indexPath: IndexPath, color: UIColor) {
                if let cell = collectionView.cellForItem(at: indexPath) {
                    if let button = cell.contentView.viewWithTag(1) as? UIButton {
                        button.backgroundColor = color
                    }
                }
            }
            // オレンジ色の設定
            let orangeColor = UIColor.orange
            
            // セルごとに対応するボタンのタグを設定
            let buttonTag: Int
            switch indexPath.item {
            case 0:
                buttonTag = abutton.tag
            case 1:
                buttonTag = abutton.tag
            case 3:
                buttonTag = tbutton.tag
            case 2:
                buttonTag = abutton.tag
                // ... 他のセルの設定 ...
            default:
                buttonTag = 0
            }
            
            // uボタンとsharpボタンが押された場合
            if selectedButtonTag == abutton.tag && sharp.isSelected {
                setButtonColor(cellIndexPath1, color: orangeColor)
            }
            // uボタンのみが押された場合
            else if selectedButtonTag == abutton.tag {
                setButtonColor(cellIndexPath2, color: orangeColor)
            }
            // tボタンが押された場合
            else if selectedButtonTag == tbutton.tag {
                setButtonColor(cellIndexPath3, color: orangeColor)
            }
            // uボタンとsharpボタンかtボタンとflatボタンが押された場合
            else if (selectedButtonTag == abutton.tag && sharp.isSelected) || (selectedButtonTag == tbutton.tag && flat.isSelected) {
                setButtonColor(cellIndexPath4, color: orangeColor)
            }
            // pボタン、rボタン、tボタン、vボタンが押された場合
            else if selectedButtonTag == pbutton.tag || selectedButtonTag == rbutton.tag || selectedButtonTag == tbutton.tag || selectedButtonTag == vbutton.tag {
                let buttons = [gbutton, cbutton, dbutton, abutton]
                for button in buttons {
                    button?.backgroundColor = orangeColor
                }
            }
            // その他の場合は、全てのボタンをグレーに設定
            else {
                let buttons = [abutton, bbutton, cbutton, dbutton, ebutton, fbutton, gbutton, hbutton, ibutton, jbutton, kbutton, lbutton, mbutton, nbutton, obutton, pbutton, qbutton, rbutton, sbutton, tbutton, ubutton, vbutton]
                for button in buttons {
                    button?.backgroundColor = UIColor.gray
                }
            }
            
            // ボタンの色を設定
            setButtonColor(indexPath, color: orangeColor)
            
            return cell
            
            
            
            func buttonTapped(_ sender: UIButton) {
                
                let buttons = [abutton, bbutton, cbutton, dbutton, ebutton, fbutton, gbutton, hbutton, ibutton, jbutton, kbutton, lbutton, mbutton, nbutton, obutton, pbutton, qbutton, rbutton, sbutton, tbutton, ubutton, vbutton]
                
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
                
                if sender == abutton {
                    doremi.text = "ド"
                    lita.text = ""
                    let a = true
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
            
            func sharpTapped() {
                //ラベルに反映
                sandf.text = String("#")
            }
            func flatTapped() {
                //ラベルに反映
                sandf.text = String("♭")
            }
            func naturalTapped() {
                sandf.text = String(" ")
                
            }
            
        }
    }
}
