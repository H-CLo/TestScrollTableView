//
//  CatogoriesRow.swift
//  TestScrollTableView
//
//  Created by RD-WilleyLo on 07/06/2017.
//  Copyright © 2017 RD-WilleyLo. All rights reserved.
//

import UIKit

class CatogoriesRow: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

// MARK: Step 2
// MARK: collectionView UICollectionViewDataSource

extension CatogoriesRow: UICollectionViewDataSource {
    
    // Within CategoryRow.swift, implement the Collection View DataSource method numberOfItemsInSection. For now, hard-code 12 videos per genre.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    // Also implement cellForItemAtIndexPath and dequeue the cell using the videoCell identifier we set in the Storyboard earlier.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) 
        
        return item
    }
    
}

// MARK: Step 3
// MARK: collectionView UICollectionViewDelegateFlowLayout

extension CatogoriesRow: UICollectionViewDelegateFlowLayout {

    // Almost done! For a Table View Cell’s height, you might be used to heightForRowAtIndexPath. Collection Views use a similar method sizeForItemAtIndexPath that determines both height and width. Drop in the code snippet below to fit a handful of cells on each row at a time.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 4
        let hardCodedPadding: CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
