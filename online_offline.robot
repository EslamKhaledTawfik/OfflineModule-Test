| *** Settings *** |
| Test Teardown  |
| Resource       | Keywords.robot |

| *** Test Cases *** |
| Create Event Without Trainer From Server |
|    | [Tags] | Create Event |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event On Server |
|    | Sleep | ${Delay} |
|    | Assert Successfull Creation |
|    | Store Server_EventID from the event |
|    | Go to the offline module |
|    | Sync the data |
|    | Compare Sever_EventID With ClientID |

| Create Event With Trainer From Server |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Add a Trainer |
|    | Save Event On Server |
|    | Sleep | ${Delay} |
|    | Assert Successfull Creation |

| Delete The Created Event From Server |
|    | Admin Login |
|    | Delete Event From Server |
|    | Assert Event Delete On Server |
|    | Go to the offline module |
|    | Sync the data |
|    | Assert Event Delete On Client |

| Create Event From Client |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save event and sync with server |
|    | Store client_eventID |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Compare client_event id with server id |

| Create Event With Trainer From Client |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Select a trainer on client |
|    | Save event and sync with server |
|    | Store client_eventID |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Compare client_event id with server id |

| Create Trainer From Server |
|    | Create trainer from server |
|    | Go to the offline module |
|    | Sync the data |
|    | Create event from client |
|    | Select a trainer on client |

| Update Trainer From Server |
|    | Navigate to trainer page from server |
|    | Sort trainers names desc |
|    | Edit First trainer |
|    | Go to the offline module |
|    | Sync the data |
|    | Create event from client |
|    | Select an edited trainer on client |

| Delete Trainer From Server |
|    | Admin Login |
|    | Navigate to trainer page from server |
|    | Sort trainers names desc |
|    | Delete the last created trainer |
|    | Go to the offline module |
|    | Sync the data |
|    | Create event from client |
|    | Element Should Not Contain | xpath=//*[@id="trainersList_chosen"]/ul/li/input | ${new_trainer_firstname} |

| Update Event From Server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event (General Edit) |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client (General Edit) |

| Update Event From Client |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Edit event on client |
|    | Sync the data |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Check For the client_updated Event On Server |

| Update Event From Server(Add Trainer) |
|    | [Setup] | [TestCase]Create Event without trainer from server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event(Add Trainer) |
|    | Save Event On Server |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client (Add Trainer) |

| Update Event From Server(Add multiple Trainers) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event (Add multiple Trainer) |
|    | Save Event On Server |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client(Add Multiple Trainer) |

| Update Event From Server(Remove Trainer) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Delete Trainer |
|    | Save Event On Server |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client(Remove Trainer) |

| Update Event From Server(Remove Multiple Trainers) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Delete Trainer |
|    | Save Event On Server |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client(Remove Multiple Trainers) |

| Update Event From Server(Add Session) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Create another session from server |
|    | Save event and store session number |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client (Add Session) |

| Update Event From Server(Remove Session) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Delete session from server |
|    | Save event and store session number |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client (Add Session) |

| Update Event from client(Add Trainer) |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Select a trainer on client |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Page Should Contain | ${trainer} |

| Update Event from client(remove Trainer) |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Remove a trainer on client |
|    | Element Should Not Contain | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] | ${trainer} |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Element Should Not Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer} |

| Update Event from client(Add Multiple Trainers) |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Select another trainer on client |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer} |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${another_trainer} |

| Update Event from client(remove multiple Trainers) |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Remove a trainer on client |
|    | Wait Until Page Contains | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] |
|    | Element Should Not Contain | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] | ${another_trainer} |
|    | Element Should Not Contain | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] | ${trainer} |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Element Should Not Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer} |

| Create Session From Client |
|    | [Setup] | [TestCase]Create event from client |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Create another session from client |
|    | Update event and sync with server |
|    | Store session number on client |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Check for the edited event on server(Add Session) |

| Update Session on Client |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Edit session on client |
|    | Update event and sync with server (Don't Click On the last event) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Check for the edited event on server(Update Session) |

| Delete Session on Client |
|    | Go to the offline module |
|    | Edit last created event on client |
|    | Delete session on client |
|    | Update event and sync with server |
|    | Store session number on client |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Check for the edited event on server(Add Session) |

| Filling Evaluations |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Click On Evaluation To add |
|    | Select Evaluation's value |
|    | Save Event On Server |
|    | Comment | Click On Workshop In the server |
|    | Comment | Click on last created event |
|    | Comment | Save Evaluation's value |
|    | Comment | Go to the offline module |
|    | Comment | Edit last created event on client |
|    | Comment | Check evaluation |

| Compare Evaluations |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Click on last created event |
|    | Save Evaluation's value |
|    | Go to the offline module |
|    | Sync the data |
|    | Edit last created event on client |
|    | Check evaluation |

| [In progress]Update Session on Server |
|    | Admin Login |
|    | Comment | Click On Workshop In the server |
|    | Comment | Edit last created event |
|    | Comment | Create another session from server |
|    | Comment | Save Event On Server |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Update session from server |
|    | Save Event On Server |
|    | Comment | Go to the offline module |
|    | Comment | Edit event on client |
|    | Comment | Check for the edited event on client (Add Session) |
|    | Element should contain | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/table/tbody/tr[2]/td[2] | 2 |

| Update Event From Server(Add Participant) |
|    | [Setup] |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event(Add Participant) |
|    | Save Event On Server |
|    | Go to the offline module |
|    | Sync the data |
|    | Check for the edited event on client (Add Participant) |

| Create Participant from client |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save Event on client |
|    | Edit last created event on client |
|    | Create Participant from client |
|    | Confirm Action |
|    | Page Should Contain | ${client_participant_first_name} |

| Create Participant from Server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event(Create Participant) |
