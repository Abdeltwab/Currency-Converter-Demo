//
//  CurrencyConverterMainContract.swift
//  Demo-App
//
//  Created Abdeltwab on 12/21/20.
//
//

import Foundation
import RxSwift
import RxCocoa


//MARK: - Router
enum CurrencyConverterMainRoute {
    case selectedCurrency(baseCurrency:Currency, selectedCurrency:Currency)
    case changeCurrencyBase (selectedCurrency: BehaviorRelay<Currency>, currencies: [Currency])
}

protocol CurrencyConverterMainRouterProtocol: class {
    func go(to route:CurrencyConverterMainRoute)
}



//MARK: - Presenter
protocol CurrencyConverterMainPresenterProtocol: class {
    func attach()
    var viewModel: CurrencyConverterMainViewModel  { get }

}



//MARK: - Interactor
protocol CurrencyConverterMainInteractorProtocol: CurrencyNetworkingProtocol {

    
}



//MARK: - View
protocol CurrencyConverterMainViewControllerProtocol: class {

  var presenter: CurrencyConverterMainPresenterProtocol?  { get set }
}
