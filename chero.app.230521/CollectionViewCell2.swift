//
//  CollectionViewCell2.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/31.
//

import UIKit

class CollectionViewCell2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var ontei: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ontei.backgroundColor = UIColor.lightGray
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // セクション内のアイテム数を返す処理を実装する必要があります
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // セルを生成して返す処理を実装する必要があります
        return UICollectionViewCell()
    }
}
