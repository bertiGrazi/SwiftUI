//
//  CoinDataService.swift
//  Crypto App
//
//  Created by Grazi  Berti on 20/02/23.
//

import Foundation

class CoinDataService {
    @Published var allCoins: [CoinModel] = []
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }
        
    }
}