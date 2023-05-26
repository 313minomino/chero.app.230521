//
//  CollectionViewCell.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/25.
//

import UIKit

class OutputViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    // セルの識別子
    let cellIdentifier = "Cell"
    
    // セルに表示するデータ
    let cellData = ["A", "B", "C", "D", "E", "F", "G"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.gray
        
        // コレクションビューのレイアウトを設定
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 50, height: 50)
        
        // コレクションビューを生成し、配置
        let collectionView = UICollectionView(frame: CGRect(x: 50, y: 100, width: 300, height: 300), collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.lightGray
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        view.addSubview(collectionView)
    }
    
    // MARK
    
    
    
}

