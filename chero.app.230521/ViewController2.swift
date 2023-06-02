//
//  ViewController2.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/29.
//

import UIKit

class ViewController2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var str = ""
    var selectedButtonTag: Int?
    var selectedButtonTitle: String?
    
    var konooto2: Int?
    
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            
            layout.itemSize = CGSize(width: 50, height: 60)
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
        }
    }
    @IBOutlet weak var otoAbutton: UIButton!
    @IBOutlet weak var otoDbutton: UIButton!
    @IBOutlet weak var otoCbutton: UIButton!
    @IBOutlet weak var otoGbutton: UIButton!
    @IBOutlet var doremi2: UILabel!
    @IBOutlet var sandf2: UILabel!
    @IBOutlet var lita2: UILabel!
    
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
    
    @IBOutlet var sharp: UIButton!
    @IBOutlet var flat: UIButton!
    @IBOutlet var natural: UIButton!
    
    // 選択されたボタンのタグを保持するプロパティ
    
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "CollectionCell")
        
        // Do any additional setup after loading the view.
        otoAbutton.layer.cornerRadius = 17.5
        otoDbutton.layer.cornerRadius = 17.5
        otoCbutton.layer.cornerRadius = 17.5
        otoGbutton.layer.cornerRadius = 17.5
        
        
    }
    
    // UICollectionViewDataSourceのメソッドを実装する
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 44 // 表示するセルの数を返す
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
        
        // ボタンの色を設定するメソッド
        func setButtonColor(_ buttonTag: Int, color: UIColor) {
            if let button = cell.contentView.viewWithTag(buttonTag) as? UIButton {
                button.backgroundColor = color
            }
        }
        
        // オレンジ色の設定
        let orangeColor = UIColor.orange
        
        // セルごとに対応するボタンのタグを設定
        let buttonTag: Int
        switch indexPath.item {
        case 0:
            buttonTag = ubutton.tag
        case 1:
            buttonTag = ubutton.tag
        case 3:
            buttonTag = tbutton.tag
        case 2:
            buttonTag = ubutton.tag
            // ... 他のセルの設定 ...
        default:
            buttonTag = 0
        }
        
        // pボタン、rボタン、tボタン、vボタンが押された場合は、g,c,d,aボタンの色をオレンジに設定
        if selectedButtonTag == pbutton.tag || selectedButtonTag == rbutton.tag || selectedButtonTag == tbutton.tag || selectedButtonTag == vbutton.tag {
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
        setButtonColor(buttonTag, color: orangeColor)
        
        return cell
    }
}
