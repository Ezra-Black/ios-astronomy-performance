//
//  FilterImageOperation.swift
//  Astronomy
//
//  Created by Ezra Black on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import UIKit
//created a filter image class so we can filter through the images with an operation
class FilterImageOperation: Operation {
   
    let fetchOperation: FetchPhotoOperation
    private(set) var image: UIImage?
    
    init(fetchOperation: FetchPhotoOperation) {
           self.fetchOperation = fetchOperation
       }
       
    override func main() {
        if let data = fetchOperation.imageData {
            let image = UIImage(data: data)
            self.image = image?.filtered()
            NSLog("Finished filtering image")
        }
    }
}
