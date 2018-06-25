//: Playground - noun: a place where people can play

import UIKit

// gets height in case we might need that specific information
func getHeight(height: String, someDictionary : [String: Any]) -> Int
{
    return someDictionary[height] as! Int
}
// gets the experience whether or not he needs it.
func getSoccerExp(socExp: String, someDictionary : [String: Any])-> Bool
{
    return someDictionary[socExp] as! Bool
}


//this function prints the letters to the specified targets
func makeLetters(teamArray : [[String: Any]], player : [String: Any]) -> String
{
    var tempTeam = teamArray[teamArray.count-2]
    var tempDate =  teamArray[teamArray.count-1]
    let theLetter = "Hello \(player["Guardians"]!), Your little \(player["Name"]!) has made it on to the team \(tempTeam["Team"]!) and their first practice is on \(tempDate["Date"]!). This should be a great season. Lots of fun competition to be had. "
    
    return theLetter
}


// manually created an empty array that holds all player information.
var players: [[String: Any]] = []

//added player info to array of players
players.append(["Name": "Joe Smith", "Height": 42, "Soccer Experience": true, "Guardians": "Jim and Jan Smith"])
players.append(["Name": "Jill Tanner", "Height": 36, "Soccer Experience": true, "Guardians": "Clara Tanner"])
players.append(["Name": "Bill Bon", "Height": 43, "Soccer Experience": true , "Guardians": "Sara and Jenny Bon"])
players.append(["Name": "Eva Gordon", "Height": 45, "Soccer Experience": false, "Guardians": "Wendy and Mike Gordon"])
players.append(["Name": "Matt Gill", "Height": 40, "Soccer Experience": false, "Guardians": "Charles and Sylvia Gill"])
players.append(["Name": "Kimmy Stein", "Height": 41, "Soccer Experience": false, "Guardians": "Bill and Hillary Stein"])
players.append(["Name": "Sammy Adams", "Height": 45, "Soccer Experience": false, "Guardians": "Jeff Adams"])
players.append(["Name": "Karl Saygan", "Height": 42, "Soccer Experience": true , "Guardians": "Heather Bledsoe"])
players.append(["Name": "Suzane Greenberg", "Height": 44, "Soccer Experience": true, "Guardians": "Henrietta Dumas"])
players.append(["Name": "Sal Dali", "Height": 41, "Soccer Experience": false , "Guardians": "Gala Dali"])
players.append(["Name": "Joe Kavalier", "Height": 39 , "Soccer Experience": false, "Guardians": "Sam and Elaine Kavalier"])
players.append(["Name": "Ben Finkelstein", "Height": 44, "Soccer Experience": false, "Guardians": "Aaron and Jill Finkelstein"])
players.append(["Name": "Diego Soto", "Height": 41, "Soccer Experience": true, "Guardians": "Robin and Sarika Soto"])
players.append(["Name": "Chloe Alaska", "Height": 47, "Soccer Experience": false , "Guardians": "David and Jamie Alaska"])
players.append(["Name": "Arnold Willis", "Height": 43, "Soccer Experience": false, "Guardians": "Claire Willis"])
players.append(["Name": "Phillip Helm", "Height": 44, "Soccer Experience": true, "Guardians": "Thomas Helm and Eva Jones"])
players.append(["Name": "Les Clay", "Height": 42, "Soccer Experience": true , "Guardians": "Wynonna Brown"])
players.append(["Name": "Herschel Krustofski", "Height": 45, "Soccer Experience": true, "Guardians": "Hyman and Rachel Krustofski"])
// created empty teams, and two lists for experienced and inexperienced players

var teamDragons: [[String: Any]] = []
var teamSharks:[[String: Any]] = []
var teamRaptors:[[String: Any]] = []

//creating two arrays to hold the experienced players vs the inexperienced
var experiencedPlayers: [[String: Any]] = []
var inexperiencedPlayers: [[String: Any]] = []

// created letters array to go to parents
var letters:[String] = []

//this is to count through mulitple loops
var counter = 0
//this will loop through the array of players and put the player in one of two arrays. 1st being the experienced, then the inexperienced

repeat
{
    //used a function that returns a boolean to figure out which array these players belonged in.
    if(getSoccerExp(socExp: "Soccer Experience", someDictionary: players[counter]))
    {
       experiencedPlayers.append(players[counter])
    }
    else
    {
        inexperiencedPlayers.append(players[counter])
    }
    
    
    counter += 1
} while counter < players.count

// reset the counter for further use in this code
counter = 0

//adding experienced players first
while(counter < experiencedPlayers.count)
{
    teamDragons.append(experiencedPlayers[counter])
    counter+=1
    teamSharks.append(experiencedPlayers[counter])
    counter+=1
    teamRaptors.append(experiencedPlayers[counter])
    counter+=1
}


//resetting counter
counter = 0

//adding inexperienced players to the teams
while(counter < inexperiencedPlayers.count)
{
    teamDragons.append(inexperiencedPlayers[counter])
    counter+=1
    teamSharks.append(inexperiencedPlayers[counter])
    counter+=1
    teamRaptors.append(inexperiencedPlayers[counter])
    counter+=1
}

//adding the team names to the end for letter purposes.
teamDragons.insert(["Team": "Dragons"], at: teamDragons.count)
teamRaptors.insert(["Team": "Raptors"], at: teamRaptors.count)
teamSharks.insert(["Team": "Sharks"], at: teamSharks.count)

//adding the team Dates to the end for letter purposes.
teamDragons.insert(["Date": "March 17 at 1 pm"], at: teamDragons.count)
teamRaptors.insert(["Date": "March 18 at 1 pm"], at: teamRaptors.count)
teamSharks.insert(["Date": "March 17 at 3 pm"], at: teamSharks.count)




//resetting counter once againe
counter = 0
// this loop goes through team shark. the minus negative 2  is for the two extra dictionary arrays that adds the team name and date of the first practice. that goes for the next two loops as well.
while(counter < teamSharks.count-2)
{
    let letter = makeLetters(teamArray: teamSharks, player: teamSharks[counter])
    letters.append(letter)
    counter += 1
}
counter = 0
//this iterates throught the dragons team and makes letters for the team
while(counter < teamDragons.count-2)
{
    let letter = makeLetters(teamArray: teamDragons, player: teamDragons[counter])
    letters.append(letter)
    counter += 1
}
counter = 0
// this iterates through the rapters team to create letters for the members.
while(counter < teamRaptors.count-2)
{
    let letter = makeLetters(teamArray: teamRaptors, player: teamRaptors[counter])
    letters.append(letter)
    counter += 1
}

counter = 0

//This while loop prints the letters from the letters array.
while (counter < letters.count)
{
    print(letters[counter])
    counter += 1
}
