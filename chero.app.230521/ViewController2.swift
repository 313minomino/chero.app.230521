//
//  ViewController2.swift
//  chero.app.230521
//
//  Created by 酒井実 on 2023/05/29.
//

import UIKit

protocol CatchProtocol {

    func catchData(konooto: Int)

}

class ViewController2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //プロトコルを変数化する
    var delegate:CatchProtocol?
    var konooto2 = 0
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell2
    
            // ボタンの色を設定するメソッド
        func setButtonColor(_ color: UIColor) {
            cell.setButtonColor(color)
        }
        
        setButtonColor(.lightGray)
        
        if konooto2 == 1 {
            otoGbutton.backgroundColor = UIColor.orange
        }
        if konooto2 == 8 {
            otoCbutton.backgroundColor = UIColor.orange
        }
        if konooto2 == 15 {
            otoDbutton.backgroundColor = UIColor.orange
        }
        if konooto2 == 22 {
            otoAbutton.backgroundColor = UIColor.orange
        }
        
        
        if konooto2 == 2 && indexPath.item == 0 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 3 && indexPath.item == 4 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 4 && indexPath.item == 8 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 5 && indexPath.item == 12 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 6 && indexPath.item == 16 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 7 && indexPath.item == 20 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 8 && indexPath.item == 24 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 9 && ( indexPath.item == 28 || indexPath.item == 1) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 10 && (indexPath.item == 32 || indexPath.item == 5) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 11 && ( indexPath.item == 36 || indexPath.item == 9) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 12 && ( indexPath.item == 40 || indexPath.item == 13) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 13 && indexPath.item == 17 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 14 && indexPath.item == 21 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 15 && indexPath.item == 25 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 16 && ( indexPath.item == 29 || indexPath.item == 2) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 17 && ( indexPath.item == 33 || indexPath.item == 6) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 18 &&  ( indexPath.item == 37 || indexPath.item == 10) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 19 && ( indexPath.item == 41 || indexPath.item == 14) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 20 && indexPath.item == 18  {
            setButtonColor(.orange)
        }
        
        if konooto2 == 21 && indexPath.item == 22  {
            setButtonColor(.orange)
        }
        
        if konooto2 == 22 && indexPath.item == 26  {
            setButtonColor(.orange)
        }
        
        if konooto2 == 23 && ( indexPath.item == 30 || indexPath.item == 3) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 24 && ( indexPath.item == 34 || indexPath.item == 7) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 25 && ( indexPath.item == 38 || indexPath.item == 11) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 26 && ( indexPath.item == 42 || indexPath.item == 15) {
            setButtonColor(.orange)
        }
        
        if konooto2 == 27 && indexPath.item == 19 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 28 && indexPath.item == 23 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 29 && indexPath.item == 27 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 30 && indexPath.item == 31 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 31 && indexPath.item == 35 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 32 && indexPath.item == 39 {
            setButtonColor(.orange)
        }
        
        if konooto2 == 33 && indexPath.item == 43 {
            setButtonColor(.orange)
        }
        
        
            return cell
        }
}
