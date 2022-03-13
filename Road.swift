enum RoadType:CustomStringConvertible{
    case PAVED, SWAMPY, MOUNTAINOUS
    
    var description : String {
        switch self {
        // Use Internationalization, as appropriate.
        case .PAVED: return "PAVED"
        case .SWAMPY: return "SWAMPY"
        case .MOUNTAINOUS: return "MOUNTAINOUS"
        }
      }
}

class Road:CustomStringConvertible{
    //stored
    let startingLoc:String
    let endingLoc:String
    let roadType: RoadType
    
    //init
    init(_ start:String, _ end:String, _ road:RoadType){
        self.startingLoc = start
        self.endingLoc = end
        self.roadType = road
    }
    
}

extension Road{
    var description: String{
        return "Starting Location: \(self.startingLoc), Ending Location: \(self.endingLoc), Road Type: \(self.roadType)"
    }
}
