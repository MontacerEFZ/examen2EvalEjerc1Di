//
//  apiConexiones.swift
//  examen2EvalEjerc1Di
//
//  Created by Montacer El Fazazi on 09/02/2024.
//

import Foundation
import Alamofire

final class apiconexiones{
    static let api = apiconexiones()
    
    let BASE_URL = "https://api.coincap.io/v2/assets"
    
    func getCoins(success: @escaping(_ respuesta: [Coin]) ->(), failure: @escaping(_ error: Error?) ->()){
        AF.request(BASE_URL, method: .get).validate(statusCode: 200...299).responseDecodable(of: Data.self){
            respuesta in
            
            if let res = respuesta.value{
                success(res.data)
            }else{
                failure(respuesta.error)
            }
        }
    }
    
    
}
