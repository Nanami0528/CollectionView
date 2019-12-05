//
//  ViewController.swift
//  CollectionView
//
//  Created by nanami tomozoe on 2019/11/25.
//  Copyright © 2019 nanami tomozoe. All rights reserved.
//

import UIKit

//参考https://qiita.com/tamagalago/items/a6bc26ab8574138280e9
class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    @IBOutlet var collectionview: UICollectionView!
   
    

    
    //スタンプの定義
    var  photos = ["maru1.jpg","maru2.jpg","shikaku2.jpg","sikaku1.jpg","maru1.jpg","maru2.jpg","shikaku2.jpg","sikaku1.jpg"]
   


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       photos = photos.shuffled()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

        // Tag番号を使ってインスタンスをつくる
       // var  label = cell.contentView.viewWithTag(1) as? UILabel
            // 文字列を代入
        //label.text =  stamps[indexPath.row]
        
       /* let photoImageView = cell.contentView.viewWithTag(1) as! UIImageView
        let photoImage = UIImage(named: photos[indexPath.row])
        photoImageView.image = photoImage
       
*/
        let photoImageView = cell.contentView.viewWithTag(1) as! UIImageView
        let photoImage = UIImage(named: "青.jpg")
        photoImageView.image = photoImage
        
        
        return cell
    }
    

    
    // セルが選択されたときの処理
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(photos[indexPath.row])がtapされたよ")
        
        
        
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        // Tag番号を使ってインスタンスをつくる
        let photoImageView = cell.contentView.viewWithTag(1) as! UIImageView
        let photoImage = UIImage(named: photos[indexPath.row])
        photoImageView.image = photoImage
        
    
        

       
           }
    
    
    
    
}

