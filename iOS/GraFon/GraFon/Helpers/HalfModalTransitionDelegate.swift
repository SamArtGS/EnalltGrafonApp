//
//  HalfModalTransitionDelegate.swift
//  BBVA
//
//  Created by Samuel Arturo Garrido Sánchez on 2020-10-17.
//  Copyright © 2020 SamArtGS. All rights reserved.
//

import UIKit

class HalfModalTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    var viewController: UIViewController
    var presentingViewController: UIViewController
    var interactionController: HalfModalInteractiveTransition
    var interactiveDismiss = true
    
    init(viewController: UIViewController, presentingViewController: UIViewController) {
        self.viewController = viewController
        self.presentingViewController = presentingViewController
        self.interactionController = HalfModalInteractiveTransition(viewController: self.viewController,
                                                                    withView: self.presentingViewController.view,
                                                                    presentingViewController: self.presentingViewController
        )
        super.init()
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        interactiveDismiss = false
        return HalfModalTransitionAnimator(type: .Dismiss)
    }
    
    func presentationController(forPresented presented: UIViewController,
                                presenting: UIViewController?,
                                source: UIViewController) -> UIPresentationController? {
        return HalfModalPresentationController(presentedViewController: presented, presenting: presenting)
    }
    
    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning)
                                            -> UIViewControllerInteractiveTransitioning? {
        if interactiveDismiss {
            return self.interactionController
        }
        return nil
    }
    
}
