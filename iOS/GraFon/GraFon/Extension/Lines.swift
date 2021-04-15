//
//  ColorLine.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-04.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

extension UIColor {
    func as1ptImage() -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: 2, height: 2))
        setFill()
        UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 2, height: 4))
        let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
        UIGraphicsEndImageContext()
        return image
    }
}
