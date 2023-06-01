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

    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            
            layout.itemSize = CGSize(width: 50, height: 60)
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
        }
    }
    @IBOutlet weak var Abutton: UIButton!
    @IBOutlet weak var Dbutton: UIButton!
    @IBOutlet weak var Cbutton: UIButton!
    @IBOutlet weak var Gbutton: UIButton!
    @IBOutlet var doremi2: UILabel!
    @IBOutlet var sandf2: UILabel!
    @IBOutlet var lita2: UILabel!
    
    // 選択されたボタンのタグを保持するプロパティ
    
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "CollectionCell")
        
        // Do any additional setup after loading the view.
        Abutton.layer.cornerRadius = 17.5
        Dbutton.layer.cornerRadius = 17.5
        Cbutton.layer.cornerRadius = 17.5
        Gbutton.layer.cornerRadius = 17.5
        
        
    }
    
    // UICollectionViewDataSourceのメソッドを実装する
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 44 // 表示するセルの数を返す
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
        
        // セル内のボタンの色を設定する
        if let button = cell.contentView.viewWithTag(1) as? UIButton {
            // ボタンに応じた色を設定するロジックを記述する
            switch selectedButtonTag {
            case abutton.tag:
                button.backgroundColor = UIColor.red
            case bbutton.tag:
                button.backgroundColor = UIColor.blue
            case cbutton.tag:
                button.backgroundColor = UIColor.green
                // 他のボタンに対する色の設定を追加する
            default:
                button.backgroundColor = UIColor.gray
            }
        }
        
        return cell
        
    }
    if 
}

