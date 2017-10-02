//
//  AppDelegate.swift
//  ObjectiveCBridgeableExample
//
//  Created by Denis Morozov on 02.10.17.
//  Copyright © 2017 Denis Morozov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

		let a = ModelA(s: "1")

		Helper.foo(a as DMZModelA)

		return true
	}
}
