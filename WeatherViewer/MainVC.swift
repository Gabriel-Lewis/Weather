//
//  ViewController.swift
//  WeatherViewer
//
//  Created by Gabriel Benbow on 2/4/16.
//  Copyright © 2016 Gabriel Benbow. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
	

}

