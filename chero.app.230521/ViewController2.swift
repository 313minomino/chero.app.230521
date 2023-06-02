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
    
    var recievedButtonInfo: Bool = false
    
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
        
        sandf2.text = "\(recievedButtonInfo)"

        
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
        return cell
    }
}
