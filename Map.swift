class Map{
    var adjacencyList:[String:[(villageName:String, roadtype:RoadType)]] = [:]
    
    init(road:[Road]){
        for road in road {
            let srcValue = road.startingLoc
            
            if(adjacencyList[srcValue] == nil){
                adjacencyList[srcValue] = []
                
                let addElement = (road.endingLoc, road.roadType)
                adjacencyList[srcValue]!.append(addElement)
            }else{
                let addElement = (road.endingLoc, road.roadType)
                adjacencyList[srcValue]!.append(addElement)
            }
        }//endfor
        
        print("Initialization complete")
    }
    
    func addRoad(road:Road){
        let srcValue = road.startingLoc
        if(adjacencyList[srcValue] == nil){
            adjacencyList[srcValue] = []
            let addElement = (road.endingLoc, road.roadType)
            adjacencyList[srcValue]!.append(addElement)
        }else{
            let addElement = (road.endingLoc, road.roadType)
            adjacencyList[srcValue]!.append(addElement)
        }
    }
    
    func travel(start:String, end:String){
        var currLoc = start
        while(currLoc != end){
            if let villageList = adjacencyList[currLoc]{
                var nextLoc = villageList.first!.villageName
                var fastRoute:RoadType = villageList.first!.roadtype
                
                for village in villageList{
                    //convert road type to string
                    
                    
                    //TODO. FIX ROAD TYPE COMPARISONS
//                    if(villageRoadType.Compared(RoadType.PAVED){
//
//                    }
                }
            }
        }
        //for debuging purposes
        print("Finished")
    }
    
}
