//
//  WebsitesViewController.swift
//  PasswordManager-iOS
//
//  Created by Pavel Palancica on 1/16/22.
//

import UIKit

class WebsitesViewController: UIViewController {
    
    private lazy var websitesTableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        configureConstraints()
    }
    
    func setupUI() {
        view.backgroundColor = .lightGray
        let websiteCellNib = UINib(nibName: WebsiteTableViewCell.identifier, bundle: nil)
        websitesTableView.register(websiteCellNib, forCellReuseIdentifier: WebsiteTableViewCell.identifier)
        websitesTableView.dataSource = self
        websitesTableView.delegate = self
        websitesTableView.frame = view.frame
        view.addSubview(websitesTableView)
    }

    func configureConstraints() {
        websitesTableView.translatesAutoresizingMaskIntoConstraints = false
        websitesTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        websitesTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        websitesTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        websitesTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

extension WebsitesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let websiteCell = tableView.dequeueReusableCell(withIdentifier: WebsiteTableViewCell.identifier, for: indexPath)
        websiteCell.textLabel?.text = "Website \(indexPath.row)"
        return websiteCell
    }
}

extension WebsitesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
