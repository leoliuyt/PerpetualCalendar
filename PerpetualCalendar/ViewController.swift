//
//  ViewController.swift
//  PerpetualCalendar
//
//  Created by leoliu on 2016/12/17.
//  Copyright © 2016年 LL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let padding: CGFloat = 20.0
    let topPadding: CGFloat = 15.0
    
    let reuseIdentifier = String(describing: PerpetualCalendarCell.self)

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    func makeUI() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension ViewController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:reuseIdentifier , for: indexPath) as? PerpetualCalendarCell else {
            fatalError("unexpected cell in collection view")
        }
        return cell
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("#####\(screenHeight - 64.0)")
        return CGSize(width: (screenWidth - padding * 2.0), height: (screenHeight - 64.0))
    }
}

//extension ViewController : UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("contentSize : \(scrollView.contentSize), contentOffset:\(scrollView.contentOffset),contentInset:\(scrollView.contentInset)")
//    }
//}
