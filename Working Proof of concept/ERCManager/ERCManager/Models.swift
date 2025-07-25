//
//  Models.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import Foundation

struct Consumer: Identifiable {
    let id = UUID()
    var CID: Int
    var ProsumerID: Int
    var ConsumerName: String
    var UserName: String
    var Password: String
    var OverallHouseConsumption: Int
}

struct House: Identifiable {
    let id = UUID()
    var HID: Int
    var ProsumerID: Int
    var OverallHouseConsumption: Int
    var No_of_plugs: Int
}

struct Prosumer: Identifiable {
    let id = UUID()
    var PID: Int
    var ProsumerName: String
    var UserName: String
    var Password: String
    var OverallConsumption: Int
}

struct Plug: Identifiable {
    let id = UUID()
    var PlugID: Int
    var Consumption: Int
    var HouseID: Int
    var Date: String
}

let consumers = [
    Consumer(CID: 200, ProsumerID: 1, ConsumerName: "Consumer 1", UserName: "cuser1", Password: "cpass1", OverallHouseConsumption: 60),
    Consumer(CID: 201, ProsumerID: 2, ConsumerName: "Consumer 2", UserName: "cuser2", Password: "cpass2", OverallHouseConsumption: 100),
    Consumer(CID: 202, ProsumerID: 3, ConsumerName: "Consumer 3", UserName: "cuser3", Password: "cpass3", OverallHouseConsumption: 75),
    Consumer(CID: 203, ProsumerID: 4, ConsumerName: "Consumer 4", UserName: "cuser4", Password: "cpass4", OverallHouseConsumption: 120),
    Consumer(CID: 204, ProsumerID: 5, ConsumerName: "Consumer 5", UserName: "cuser5", Password: "cpass5", OverallHouseConsumption: 50),
    Consumer(CID: 205, ProsumerID: 6, ConsumerName: "Consumer 6", UserName: "cuser6", Password: "cpass6", OverallHouseConsumption: 80),
    Consumer(CID: 206, ProsumerID: 7, ConsumerName: "Consumer 7", UserName: "cuser7", Password: "cpass7", OverallHouseConsumption: 110),
    Consumer(CID: 207, ProsumerID: 8, ConsumerName: "Consumer 8", UserName: "cuser8", Password: "cpass8", OverallHouseConsumption: 95),
    Consumer(CID: 208, ProsumerID: 9, ConsumerName: "Consumer 9", UserName: "cuser9", Password: "cpass9", OverallHouseConsumption: 130),
    Consumer(CID: 209, ProsumerID: 10, ConsumerName: "Consumer 10", UserName: "cuser10", Password: "cpass10", OverallHouseConsumption: 90)
]

let houses = [
    House(HID: 100, ProsumerID: 1, OverallHouseConsumption: 20, No_of_plugs: 4),
    House(HID: 101, ProsumerID: 1, OverallHouseConsumption: 40, No_of_plugs: 8),
    House(HID: 102, ProsumerID: 2, OverallHouseConsumption: 50, No_of_plugs: 10),
    House(HID: 103, ProsumerID: 2, OverallHouseConsumption: 50, No_of_plugs: 10),
    House(HID: 104, ProsumerID: 3, OverallHouseConsumption: 25, No_of_plugs: 5),
    House(HID: 105, ProsumerID: 3, OverallHouseConsumption: 50, No_of_plugs: 10),
    House(HID: 106, ProsumerID: 4, OverallHouseConsumption: 60, No_of_plugs: 12),
    House(HID: 107, ProsumerID: 5, OverallHouseConsumption: 50, No_of_plugs: 10),
    House(HID: 108, ProsumerID: 6, OverallHouseConsumption: 40, No_of_plugs: 8),
    House(HID: 109, ProsumerID: 7, OverallHouseConsumption: 55, No_of_plugs: 11),
    House(HID: 110, ProsumerID: 8, OverallHouseConsumption: 45, No_of_plugs: 9),
    House(HID: 111, ProsumerID: 9, OverallHouseConsumption: 65, No_of_plugs: 13),
    House(HID: 112, ProsumerID: 10, OverallHouseConsumption: 45, No_of_plugs: 9)
]

let prosumers = [
    Prosumer(PID: 1, ProsumerName: "Prosumer 1", UserName: "user1", Password: "pass1", OverallConsumption: 60),
    Prosumer(PID: 2, ProsumerName: "Prosumer 2", UserName: "user2", Password: "pass2", OverallConsumption: 100),
    Prosumer(PID: 3, ProsumerName: "Prosumer 3", UserName: "user3", Password: "pass3", OverallConsumption: 75),
    Prosumer(PID: 4, ProsumerName: "Prosumer 4", UserName: "user4", Password: "pass4", OverallConsumption: 120),
    Prosumer(PID: 5, ProsumerName: "Prosumer 5", UserName: "user5", Password: "pass5", OverallConsumption: 50),
    Prosumer(PID: 6, ProsumerName: "Prosumer 6", UserName: "user6", Password: "pass6", OverallConsumption: 80),
    Prosumer(PID: 7, ProsumerName: "Prosumer 7", UserName: "user7", Password: "pass7", OverallConsumption: 110),
    Prosumer(PID: 8, ProsumerName: "Prosumer 8", UserName: "user8", Password: "pass8", OverallConsumption: 95),
    Prosumer(PID: 9, ProsumerName: "Prosumer 9", UserName: "user9", Password: "pass9", OverallConsumption: 130),
    Prosumer(PID: 10, ProsumerName: "Prosumer 10", UserName: "user10", Password: "pass10", OverallConsumption: 90)
]
let plugs = [
    Plug(PlugID: 300, Consumption: 5, HouseID: 100, Date: "2023-07-01"),
    Plug(PlugID: 301, Consumption: 5, HouseID: 100, Date: "2023-07-03"),
    Plug(PlugID: 302, Consumption: 5, HouseID: 100, Date: "2023-07-03"),
    Plug(PlugID: 303, Consumption: 5, HouseID: 100, Date: "2023-07-03"),
    Plug(PlugID: 304, Consumption: 5, HouseID: 101, Date: "2023-07-03"),
    Plug(PlugID: 305, Consumption: 5, HouseID: 101, Date: "2023-07-03")
]
