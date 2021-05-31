//
//  PantallaCreditos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-31.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PantallaCreditos: UIView {
    
    // MARK: Elementos de UI
    
    private let logoUNAM: UIImageView = {
        let logo = UIImageView()
        return logo
    }()
    
    
    // MARK: Constructores y deinit
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se ha reclamado los créditos")
    }
}
