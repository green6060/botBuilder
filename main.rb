class botBuilder

  questRequirements = { 
    cooksAssistant: [
      "bucket of milk", 
      "pot of flour", 
      "egg"
    ], 
    sheepShearer: [
      "ball of wool" # 20 are needed
    ], 
    restlessGhost: [
      "" # No items are required for this quest
    ],
    impCatcher: [
      "black bead", 
      "yellow bead", 
      "red bead", 
      "white bead"
    ],
    doricksQuest: [
      "clay",  # 6 are needed
      "copper ore", # 4 are needed
      "iron ore" # 2 are needed
    ],
    romeoJuliet: [
      "cadava berry"
    ],
    witchesPotion: [
      "burnt meat",
      "eye of newt",
      "onion"
    ]
  }

  statRequirements = {
    attack: [
      "iron scimitar", 
      "steel scimitar", 
      "black scimitar"
    ], 
    strength: [
      "iron scimitar", 
      "steel scimitar", 
      "black scimitar"
    ], 
    defense: [
      "iron scimitar", 
      "steel scimitar", 
      "black scimitar"
    ],
    range: [
      "shortbow", 
      "oak shortbow", 
      "iron arrow" # a LOT are needed
    ],
    magic: [ 
      "earth staff",
      "fire staff",
      "mind rune", #a LOT are needed
      "air rune" #a LOT are needed
    ]
  }

  bankLocations = { 
    bank1: [00000, 11111, 22222, 33333], 
    bank2: [44444, 55555, 66666, 77777],
    bank3: [88888, 99999, 12121, 13131],
    bank4: [14141, 15151, 16161, 17171],
    bank5: [18181, 19191, 21212, 23232]
  }

  def initialize
    statsNotCompleted[] = check_stats(filter_stats_below_20)
    questsNotCompleted[] = check_quests(filter_quests_not_completed)
    handleQuests(questsNotCompleted)
    handleStats(statsNotCompleted)
  end

  def handleQuests(questsNotCompleted)
    questsNotCompleted.map { |quest|
      missingItems[] = checkInventory(quest)
      if missingItems == null
        completeTask(quest)
      else
        withdrawItems(missingItems)
        completeTask(quest)
    }
  end

  def handleStats(statsNotCompleted)
    statsNotCompleted.map { |stat|
      missingItems[] = checkInventory(stat)
      if missingItems == null
        completeTask(stat)
      else
        withdrawItems(missingItems)
        completeTask(stat)
    }
  end

  def withdrawItems(missingItems)
    #walk to bank

    missingItems.map { |item|
      # withdraw item
    }
  end

  def checkInventory (requirement)
    case requirement
    when "quest1"
      #compare questRequirements[quest1] to current_inventory
      #return missingItems
    when "quest2"
      #compare questRequirements[quest2] to current_inventory
      #return missingItems
    when "quest3"
      #compare questRequirements[quest2] to current_inventory
      #return missingItems
    when "stat1"
      #compare statRequirements[stat1] to current_inventory
      #return missingItems
    when "stat2"
      #compare statRequirements[stat2] to current_inventory
      #return missingItems
    when "stat3"
      #compare statRequirements[stat3] to current_inventory
      #return missingItems
  end

  def completeTask
    case requirement
    when "quest1"
      #completeQuest1()
    when "quest2"
      #completeQuest2()
    when "quest3"
      #completeQuest3()
    when "stat1"
      #completeStat1()
    when "stat2"
      #completeStat2()
    when "stat3"
      #completeStat3()
  end

end