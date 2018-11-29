// List of players
var players: [[String: String]] = [
    [ "name": "Joe Smith",
    "height": "42",
    "experience": "true",
    "guardians": "Jim and Jan Smith", ],
    [ "name": "Jill Tanner",
    "height": "36",
    "experience": "true",
    "guardians": "Ciara Tanner", ],
    [ "name": "Bill Bon",
    "height": "43",
    "experience": "true",
    "guardians": "Sara and Jenny Bon", ],
    [ "name": "Eva Gordon",
    "height": "45",
    "experience": "false",
    "guardians": "Wendy and Mike Gordon", ],
    [ "name": "Matt Gill",
    "height": "40",
    "experience": "false",
    "guardians": "Charles and Sylvia Gill", ],
    [ "name": "Kimmy Stein",
    "height": "41",
    "experience": "false",
    "guardians": "Bill and Hillary Stein", ],
    [ "name": "Sammy Adams",
    "height": "45",
    "experience": "false",
    "guardians": "Jeff Adams", ],
    [ "name": "Karl Saygan",
    "height": "42",
    "experience": "true",
    "guardians": "Heather Bledsoe", ],
    [ "name": "Suzane Greenberg",
    "height": "44",
    "experience": "true",
    "guardians": "Henrietta Dumas", ],
    [ "name": "Sal Dali",
    "height": "41",
    "experience": "false",
    "guardians": "Gala Dali", ],
    [ "name": "Joe Kavalier",
    "height": "39",
    "experience": "false",
    "guardians": "Sam and Elaine Kavalier", ],
    [ "name": "Ben Finkelstein",
    "height": "44",
    "experience": "false",
    "guardians": "Aaron and Jill Finkelstein", ],
    [ "name": "Diego Soto",
    "height": "41",
    "experience": "true",
    "guardians": "Robin and Sarika Soto", ],
    [ "name": "Chloe Alaska",
    "height": "47",
    "experience": "false",
    "guardians": "David and Jamie Alaska", ],
    [ "name": "Arnold Wills",
    "height": "43",
    "experience": "false",
    "guardians": "Claire Wills", ],
    [ "name": "Phillip Helm",
    "height": "44",
    "experience": "true",
    "guardians": "Thomas Helm and Eva Jones", ],
    [ "name": "Les Clay",
    "height": "42",
    "experience": "true",
    "guardians": "Wynonna Brown", ],
    [ "name": "Herschel Krustofski",
    "height": "45",
    "experience": "true",
    "guardians": "Hyman and Rachel Krustofski", ]
]

// This will group the players into experienced/non-experienced groups
var experiencedPlayers: [[String: String]] = []
var noExperiencePlayers: [[String: String]] = []

for player in players {
    switch player["experience"] {
    case "true":
        experiencedPlayers.append(player)
    case "false":
        noExperiencePlayers.append(player)
    default:
        print("ERROR: Need more information on", player)
    }
}

// This will put the players into teams
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

func makeTeams (groupSelection group: [[String: String]]) {
    var playerCount: Int = group.count / 3
    // Following code will make sure that grow with increased players
    while playerCount == teamDragons.count {
        playerCount += (group.count / 3)
    }
    for player in group {
        if (teamDragons.count != playerCount) {
            teamDragons.append(player)
        } else if teamSharks.count != playerCount {
            teamSharks.append(player)
        } else if teamRaptors.count != playerCount {
            teamRaptors.append(player)
        } else {
            print("ERROR: Extra player, will make teams uneven", player)
        }
    }
}
makeTeams(groupSelection: experiencedPlayers)
makeTeams(groupSelection: noExperiencePlayers)

// Letters to parents
let dragonsDate: [String: String] = [
    "name" : "Dragons",
    "month" : "March",
    "day" : "17",
    "time" : "1pm", ]
let sharksDate: [String: String] = [
    "name" : "Sharks",
    "month" : "March",
    "day" : "17",
    "time" : "3pm", ]
let raptorsDate: [String: String] = [
    "name" : "Raptors",
    "month" : "March",
    "day" : "18",
    "time" : "1pm", ]

func firstPracticeLetters (playersTeam team: [[String: String]], teamInfo info: [String: String]) {
    for player in team {
        print("Hello \(player["guardians"]!), we would like to inform you that \(player["name"]!) was placed with the \(info["name"]!). The first practice date for the \(info["name"]!) will be on \(info["month"]!) \(info["day"]!) \(info["time"]!) at the local Swift Soccer Feild. Go \(info["name"]!)!")
    }
}
firstPracticeLetters(playersTeam: teamDragons, teamInfo: dragonsDate)
firstPracticeLetters(playersTeam: teamSharks, teamInfo: sharksDate)
firstPracticeLetters(playersTeam: teamRaptors, teamInfo: raptorsDate)
