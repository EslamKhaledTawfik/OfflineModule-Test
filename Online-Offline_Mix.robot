| *** Settings *** |
| Test Teardown  | close all browsers |
| Resource       | Keywords.robot |

| *** Test Cases *** |
| Create and update event from server (General Edit) |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event |
|    | Click On Workshop In the server |
|    | Edit last created event (General Edit) |
|    | Assert successful event update (General Edit) |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Sync the data |
|    | Check for the edited event on client (General Edit) |
|    | [Teardown] |

| Create and update event from server (Add Trainer) |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event |
|    | Click On Workshop In the server |
|    | Edit last created event(Add Trainer) |
|    | Save Event |
|    | Assert successful event update (ِAdd Trainer) |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Sync the data |
|    | Check for the edited event on client (Add Trainer) |

| Create and update event from server (Add Multiple Trainers) |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event |
|    | Click On Workshop In the server |
|    | Edit last created event(Add Trainer) |
|    | Add another Trainer |
|    | Save Event |
|    | Assert successful event update (ِAdd Multiple Trainer) |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Sync the data |
|    | Check for the edited event on client(Add Multiple Trainer) |

| Create and update event from server (Add Session) |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Create another session from server |
|    | Save event and store session number |
|    | Assert successful event update (Add Session) |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Sync the data |
|    | Check for the edited event on client (Add Session) |

| Create and update trainer from server |
|    | Create trainer from server |
|    | Comment | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | Sort trainers names desc |
|    | Edit First trainer |
|    | Go to the offline module |
|    | Sync the data |
|    | Create event from client |
|    | Select an edited trainer on client |

| Update Event (Add Trainer & Add Session) |
|    | [Documentation] | Precondition: The edited event shouldn't have any trainers |
|    | [Setup] | [TestCase]Create Event without trainer from server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event(Add Trainer) |
|    | Create another session from server |
|    | Save event and store session number |
|    | Assert successful event update (ِAdd Trainer) |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Sync the data |
|    | Check for the edited event on client (Add Trainer) |
|    | Check for the number of sessions on client |

| Update Event (Add Session & Add Update) |
|    | [Documentation] | Precondition: The edited event shouldn't have any trainers |
|    | [Setup] | [TestCase]Create Event without trainer from server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Create another session from server |
|    | Save event and store session number |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Sync the data |
|    | Check for the edited event on client (Add Trainer) |
|    | Check for the number of sessions on client |
