//
//  ViewController2.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/29.
//

import UIKit

class ViewController2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

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

    var selectedButtonTag: Int?  // 選択されたボタンのタグを保持するプロパティ
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        override func viewDidLoad() {
            super.viewDidLoad()
            collectionView.register(UINib(nibName: "CollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
            
            collectionView.dataSource = self
            // 選択されたボタンのタグに基づいて反応を変える処理
            if let tag = selectedButtonTag {
                if tag == 1 {
                    // ボタン1が選択された場合の処理
                } else if tag == 2 {
                    // ボタン2が選択された場合の処理
                } else if tag == 3 {
                    // ボタン3が選択された場合の処理
                } else if tag == 30 {
                    // ...
                }
            }
            
            // Do any additional setup after loading the view.
            Abutton.layer.cornerRadius = 17.5
            Dbutton.layer.cornerRadius = 17.5
            Cbutton.layer.cornerRadius = 17.5
            Gbutton.layer.cornerRadius = 17.5
        }
        
        // UICollectionViewDataSourceのメソッドを実装する
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 44 // 表示するセルの数を返す（適宜修正してください）
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CollectionViewCell2
            
        }
    }
