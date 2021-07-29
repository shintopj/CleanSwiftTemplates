//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

struct ___VARIABLE_sourceCellIdentifier___CellModel: CellModelSelectable {

    // MARK: - Properties

    let selectionHandler: (() -> Void)?
}

extension ___VARIABLE_sourceCellIdentifier___CellModel: CellModelConvertible {

    typealias Cell = ___VARIABLE_sourceCellIdentifier___Cell

    var cellHeight: Double {
        return UITableView.automaticDimension
    }
}
