//
//  CoinStruct.swift
//  examen2EvalEjerc1Di
//
//  Created by Montacer El Fazazi on 09/02/2024.
//

import Foundation

struct Data: Codable {
    let data: [Coin]
    let timestamp: Int
}

struct Coin: Codable {
//    let id: String!
//    let rank: String!
    let symbol: String!
    let name: String!
//    let supply: String!
//    let maxSupply: String!
//    let marketCapUsd: String!
//    let volumeUsd24Hr: String!
    let priceUsd: String!
 //   let changePercent24Hr: String!
  //  let vwap24Hr: String!
    let explorer: String!
    
}
