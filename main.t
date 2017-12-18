import GUI
var homeButton : int
var nextButton : int
var backButton : int
var quitButton : int
var jobDescriptionButton : int
var titlesButton : int
var dutiesButton : int
var employersButton : int
var wagesButton : int
var outlookButton : int
var jobRequirementButton : int
var educationButton : int
var sourcesButton : int

View.Set ("graphics: 640; 400")



proc show
    GUI.Show (jobDescriptionButton)
    GUI.Show (titlesButton)
    GUI.Show (dutiesButton)
    GUI.Show (employersButton)
    GUI.Show (wagesButton)
    GUI.Show (outlookButton)
    GUI.Show (jobRequirementButton)
    GUI.Show (educationButton)
    GUI.Show (sourcesButton)
    GUI.Show (quitButton)
end show

% any page that's not the home page

proc hideFromHome
    GUI.Hide (jobDescriptionButton)
    GUI.Hide (titlesButton)
    GUI.Hide (dutiesButton)
    GUI.Hide (employersButton)
    GUI.Hide (wagesButton)
    GUI.Hide (outlookButton)
    GUI.Hide (jobRequirementButton)
    GUI.Hide (educationButton)
    GUI.Hide (sourcesButton)
end hideFromHome

procedure home
    Window.Set (defWinId, "title:Computer Programmer & Interactive Media Developer")
    var homeImage := Pic.FileNew ("main-image.jpg")
    var homeFont : int := Font.New ("Arial:15:Bold")
    homeImage := Pic.Scale (homeImage, 640, 400)
    Pic.Draw (homeImage, 0, 0, 0)
    Font.Draw ("NOC 2174: Computer Programmer & Interactive Media Developer", 15, 363, homeFont, white)
    show
end home

proc nextAction
end nextAction

proc backAction
end backAction

proc jobDescriptionAction
    Window.Set (defWinId, "title:Job Description")
    cls
    var fileNumber : int
    var line : string
    var jobDescriptionFont : int := Font.New ("Arial:18:Bold")
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "jobDescription.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    Font.Draw ("Job Description", 250, 358, jobDescriptionFont, black)
    GUI.Refresh
end jobDescriptionAction

proc titlesAction
    Window.Set (defWinId, "title:Titles")
    cls
    var fileNumber : int
    var line : string
    var titlesFont : int := Font.New ("Arial:18:Bold")
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "titles.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    Font.Draw ("Titles", 250, 358, titlesFont, black)
    GUI.Refresh
end titlesAction

proc dutiesAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "duties.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end dutiesAction

proc employersAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "employers.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end employersAction

proc wagesAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "wages.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end wagesAction

proc outlookAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "outlook.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end outlookAction

proc jobRequirementAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (3)
    colorback (3)
    open : fileNumber, "jobRequirement.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end jobRequirementAction

%university/college lvl
proc educationAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (147)
    colorback (147)
    open : fileNumber, "education.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end educationAction

proc sourcesAction
    cls
    var fileNumber : int
    var line : string
    hideFromHome
    GUI.SetBackgroundColour (147)
    colorback (147)
    open : fileNumber, "sources.txt", get
    loop
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put line
    end loop
    GUI.Refresh
end sourcesAction

% declaration of buttons
homeButton := GUI.CreateButton (10, 30, 75, "Home", home)
nextButton := GUI.CreateButton (125, 30, 75, "Next", nextAction)
backButton := GUI.CreateButton (225, 30, 75, "Back", backAction)
quitButton := GUI.CreateButton (563, 3, 75, "Quit", GUI.Quit)
jobDescriptionButton := GUI.CreateButton (265, 300, 125, "Job Description", jobDescriptionAction)
titlesButton := GUI.CreateButton (265, 270, 125, "Titles", titlesAction)
dutiesButton := GUI.CreateButton (265, 240, 125, "Duties", dutiesAction)
employersButton := GUI.CreateButton (265, 210, 125, "Employers", employersAction)
wagesButton := GUI.CreateButton (265, 180, 125, "Wages", wagesAction)
outlookButton := GUI.CreateButton (265, 150, 125, "Outlook", outlookAction)
jobRequirementButton := GUI.CreateButton (265, 120, 125, "Job Requirements", jobRequirementAction)
educationButton := GUI.CreateButton (265, 90, 125, "Education", educationAction)
sourcesButton := GUI.CreateButton (265, 60, 125, "Sources", sourcesAction)

home
loop
    exit when GUI.ProcessEvent
end loop

