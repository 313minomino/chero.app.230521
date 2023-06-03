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

        let konooto2String = "(\(recievedButtonInfo)"
        print (konooto2String)
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
        
        if cell.konooto2 == 2 && indexPath.row == 0 && indexPath.item == 0 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 3 && indexPath.row == 0 && indexPath.item == 1 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 4 && indexPath.row == 0 && indexPath.item == 2 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 5 && indexPath.row == 0 && indexPath.item == 3 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 6 && indexPath.row == 0 && indexPath.item == 4 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 7 && indexPath.row == 0 && indexPath.item == 5 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 8 && indexPath.row == 0 && indexPath.item == 6 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 9 && (indexPath.row == 0 && indexPath.item == 7 || indexPath.row == 1 && indexPath.item == 0) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 10 && (indexPath.row == 0 && indexPath.item == 8 || indexPath.row == 1 && indexPath.item == 1){
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 11 && (indexPath.row == 0 && indexPath.item == 9 || indexPath.row == 1 && indexPath.item == 2){
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 12 && (indexPath.row == 0 && indexPath.item == 10 || indexPath.row == 1 && indexPath.item == 3) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 13 && indexPath.row == 1 && indexPath.item == 4 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 14 && indexPath.row == 1 && indexPath.item == 5 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 15 && indexPath.row == 1 && indexPath.item == 6 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 16 && (indexPath.row == 1 && indexPath.item == 7 || indexPath.row == 2 && indexPath.item == 0) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 17 && (indexPath.row == 1 && indexPath.item == 8 || indexPath.row == 2 && indexPath.item == 1) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 18 && (indexPath.row == 1 && indexPath.item == 9 || indexPath.row == 2 && indexPath.item == 2) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 19 && (indexPath.row == 1 && indexPath.item == 10 || indexPath.row == 2 && indexPath.item == 3) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 20 && indexPath.row == 2 && indexPath.item == 4  {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 21 && indexPath.row == 2 && indexPath.item == 5  {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 22 && indexPath.row == 2 && indexPath.item == 6  {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 23 && (indexPath.row == 2 && indexPath.item == 7 || indexPath.row == 3 && indexPath.item == 0) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 24 && (indexPath.row == 2 && indexPath.item == 8 || indexPath.row == 3 && indexPath.item == 1) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 25 && (indexPath.row == 2 && indexPath.item == 9 || indexPath.row == 3 && indexPath.item == 2) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 26 && (indexPath.row == 2 && indexPath.item == 10 || indexPath.row == 3 && indexPath.item == 3) {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 27 && indexPath.row == 3 && indexPath.item == 4 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 28 && indexPath.row == 3 && indexPath.item == 5 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 29 && indexPath.row == 3 && indexPath.item == 6 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 30 && indexPath.row == 3 && indexPath.item == 7 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 31 && indexPath.row == 3 && indexPath.item == 8 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 32 && indexPath.row == 3 && indexPath.item == 9 {
            setButtonColor(.orange)
        }
        
        if cell.konooto2 == 33 && indexPath.row == 3 && indexPath.item == 10 {
            setButtonColor(.orange)
        }
        
        
            return cell
        }
}
