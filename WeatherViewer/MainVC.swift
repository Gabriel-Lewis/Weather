//
//  ViewController.swift
//  WeatherViewer
//
//  Created by Gabriel Benbow on 2/4/16.
//  Copyright © 2016 Gabriel Benbow. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	var table = true
	
	var cities = []
	
	@IBOutlet weak var TableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		TableView.dataSource = self
		TableView.delegate = self
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		return UITableViewCell()
		
	}
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	@IBAction func addButton(sender: AnyObject) {
		//Create the AlertController
	let actionSheetController: UIAlertController = UIAlertController(title: "ZipCode", message: "Please enter your zipcode", preferredStyle: .Alert)
		
	//Create and add the Cancel action
	let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
		
		
		}
  actionSheetController.addAction(cancelAction)
		//Create and an option action
  let nextAction: UIAlertAction = UIAlertAction(title: "Next", style: .Default) { action -> Void in
	
	
		}
  actionSheetController.addAction(nextAction)
  //Add a text field
  actionSheetController.addTextFieldWithConfigurationHandler { textField -> Void in
	//TextField configuration
	textField.textColor = UIColor.blueColor()
	NSUserDefaults.standardUserDefaults().setObject(textField.text, forKey: "zipcode")
	print(textField.text)
		}
		
		//Present the AlertController
		self.presentViewController(actionSheetController, animated: true, completion: nil)
	}
	

}

