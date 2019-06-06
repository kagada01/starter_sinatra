Player.destroy_all
Team.destroy_all


celtics = Team.create(name: "Celtics", location: "Boston", coach: "Brad Stevens")
wizards = Team.create(name: "Wizards", location: "Washington, D.C.", coach: "Scott Brooks")
warriors = Team.create(name: "Warriors", location: "Golden State", coach: "Steve Kerr")
raptors = Team.create(name: "Raptors", location: "Toronto", coach: "Nick Nurse")


player1 = Player.create(name: "Kevin Garnett", college: "Farragut Academy", draft_year: "1995", avg_points: "18.5", team_id: celtics.id)
player2 = Player.create(name: "Rajon Rondo", college: "University of Kentucky", draft_year: "2006", avg_points: "11", team_id: celtics.id)


player3 = Player.create(name: "John Wall", college: "UCONN", draft_year: "2010", avg_points: "26.3", team_id: wizards.id)
player4 = Player.create(name: "Bradley Beal", college: "University of Florida", draft_year: "2012", avg_points: "19", team_id: wizards.id)


player5 = Player.create(name: "Steph Curry", college: "Davidson", draft_year: "2009", avg_points: "28", team_id: warriors.id)
player6 = Player.create(name: "Kevin Durant", college: "Texas", draft_year: "2007", avg_points: "34.4", team_id: warriors.id)

player7 = Player.create(name: "Kawhi Leonard", college: "New Mexico State", draft_year: "2011", avg_points: "30.1", team_id: raptors.id)
player8 = Player.create(name: "Kyle Lowry", college: "Villanova", draft_year: "2006", avg_points: "14.1", team_id: raptors.id)
