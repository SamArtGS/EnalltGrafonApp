//
//  AppDelegate.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import CoreData
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var orientationLock = UIInterfaceOrientationMask.all
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }

    struct AppUtility {
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.orientationLock = orientation
            }
        }

        static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation:UIInterfaceOrientation) {
            self.lockOrientation(orientation)
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
        } catch {
            print("AVAudioSessionCategoryPlayback not work")
        }
    }
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 13, *) {
            
        } else {
            let nav1 = NavigationController()
            window = UIWindow(frame: UIScreen.main.bounds)
            let scrollLayout = UICollectionViewFlowLayout()
            scrollLayout.scrollDirection = .horizontal
            nav1.viewControllers = [PagePuertasCV(collectionViewLayout: scrollLayout)]
            window?.rootViewController = nav1
            window?.makeKeyAndVisible()
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "GraFon")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
