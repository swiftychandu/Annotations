//
//  ListViewController.swift
//  Annotations
//
//  Created by chandrasekhar yadavally on 4/29/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    enum Section {
        case main
    }
    
    let tableView = UITableView()
    var placesList = Place.places
    var searchController: UISearchController!
    var filteredPlaces = [Place]()
    var datasource: UITableViewDiffableDataSource<Section, Place>!
    var isSearchInProgress = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureTableView()
        navigationItem.title = "Places"
        configureSearchController()
        configureDataSource()
        updateUI(on: placesList)
    }
    
    private func configureSearchController() {
          searchController = UISearchController()
          searchController.searchResultsUpdater = self
          searchController.searchBar.placeholder = "Filter the places"
          searchController.obscuresBackgroundDuringPresentation = false
          navigationItem.searchController = searchController
      }

    func configureTableView() {
        view.addSubview(tableView)
        tableView.backgroundColor = .systemBackground
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PlaceCell.self, forCellReuseIdentifier: String(describing: PlaceCell.self))
        tableView.rowHeight = 50
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func configureDataSource() {
        datasource = UITableViewDiffableDataSource<Section, Place>(tableView: tableView, cellProvider: { (tableView, indexPath, place) -> UITableViewCell? in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlaceCell.self), for: indexPath) as? PlaceCell else { return UITableViewCell() }
            cell.updateCell(with: place)
            return cell
        })
    }
    
    func updateUI(on places: [Place]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section,Place>()
        snapshot.appendSections([.main])
        snapshot.appendItems(places)
        DispatchQueue.main.async { self.datasource.apply(snapshot, animatingDifferences: true) }
    }
    
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let places = isSearchInProgress ? filteredPlaces : placesList
        let place = places[indexPath.row]
        let mapVC = MapViewController()
        mapVC.configureMapView()
        mapVC.setAnnotationPin(for: place)
        let navController = UINavigationController(rootViewController: mapVC)
        present(navController, animated: true)
    }
}

extension ListViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let filter = searchController.searchBar.text else { return }
        if filter.isEmpty {
            isSearchInProgress = false
            updateUI(on: self.placesList)
            return
        } else { isSearchInProgress = true }
        filteredPlaces = placesList.filter { $0.name.lowercased().contains(filter.lowercased()) }
        updateUI(on: filteredPlaces)
    }
}
