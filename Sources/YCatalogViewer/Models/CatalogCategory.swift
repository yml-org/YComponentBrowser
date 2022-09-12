//
//  CatalogCategory.swift
//
//  Created by Y Media Labs on 05/09/22.
//

import Foundation

/// Represents catalog category
public struct CatalogCategory: Classification {
    /// Name of the catalog category
    public let name: String
    /// Represents the subcategories of the given category
    public let subcategories: [Classification]
    /// Represents destination of the catalog category
    public var destination: Destination {
        SubcategoryDetailDestination(
            navigationTitle: name,
            subcategories: subcategories
        )
    }
    
    /// Initializes a catalog category
    /// - Parameters:
    ///   - name: Name of the category
    ///   - subcategories: Array of sub categories
    public init(name: String, subcategories: [Classification]) {
        self.name = name
        self.subcategories = subcategories
    }
}
