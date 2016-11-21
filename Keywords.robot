| *** Setting *** |
| Library        | Selenium2Library | 150 | 1.5 |
| Resource       | Variables.robot |

| *** Keywords *** |
| Admin Login |
|    | Open Browser | ${SiteUrl} | ${Browser} |
|    | Set Selenium Speed | 1.5 |
|    | Maximize Browser Window |
|    | Input Text | css=body > div > table > tbody > tr:nth-child(2) > td.oe_application > div > div > div.oe_login_pane > form > ul > li:nth-child(5) > input[type="text"] | ${admin_username} |
|    | Input Password | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div[3]/form/ul/li[7]/input | ${admin_password} |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div[3]/form/ul/li[10]/button |
|    | sleep | 2s |

| Partner login |
|    | Open Browser | ${SiteUrl} | ${Browser} |
|    | Maximize Browser Window |
|    | Set Selenium Speed | 1.5 |
|    | Wait Until Page Contains Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div[3]/form/ul/li[5]/input |
|    | Input Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div[3]/form/ul/li[5]/input | ${partner_username} |
|    | Input Password | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div[3]/form/ul/li[7]/input | ${partner_password} |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div[3]/form/ul/li[10]/button |

| Create Event Without Trainer From Server |
|    | Click On Workshop In the server |
|    | sleep | ${Delay} |
|    | Create a new Event |
|    | Select a Country |
|    | Select a Course |
|    | Select an Area |
|    | Select Event Type |
|    | Create Session From Server |

| Create Session From Server |
|    | Create a session |
|    | Choose session date |
|    | Choose Today |
|    | Start Time | 1 |
|    | End Time | 3 |

| Delete Event From Server |
|    | Click On Workshop In the server |
|    | Sleep | 2s |
|    | Delete Last Created Event From Server |

| Assert Event Delete On Server |
|    | Element Should Not Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table | ${event_id} |

| Assert Event Delete On Client |
|    | Element Should Not Contain | xpath=//*[@id="eventsTable"]/div/table | ${event_id} |

| Create trainer from server |
|    | Navigate to trainer page from server |
|    | Create Test Trainer |

| Go To Partner Page On Server (from More dropdown list) |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[1]/td/ul/li[10] |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[10]/span/ul/li[2]/a |

| Go To Partner Page On Server (Without More Dropdown list) |
|    | Wait Until Page Contains Element | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[11]/a |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[11]/a |
|    | Comment | Wait Until Page Contains Element | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[10]/span/ul/li[3]/a |
|    | Comment | Click Element | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[10]/span/ul/li[3]/a |

| Click On Trainer MenuItem |
|    | Wait Until Page Contains Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[1]/div[1]/div[11]/ul/li[2]/a |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[1]/div[1]/div[11]/ul/li[2]/a |
|    | sleep | 2s |

| Create Test Trainer |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div/button[1] |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/span/input | ${new_trainer_firstname} |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/span/input | ${new_trainer_middlename} |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[1]/table/tbody/tr[3]/td[2]/span/input | ${new_trainer_lastname} |
|    | Select From List By Label | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[1]/table/tbody/tr[4]/td[2]/span/select | Male |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td[2]/span/div/input | ${new_trainer_country} |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[2]/table/tbody/tr[2]/td[2]/span/input | ${new_trainer_emailaddress} |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[2]/table/tbody/tr[5]/td[2]/span/div/input | ${new_trainer_area} |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[2]/a |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/table/tbody/tr/td[2]/div/div/table/thead/tr[1]/th/div[1]/button[1] |
|    | Click Element | xpath=/html/body/div[3]/div[2]/table/tbody/tr[3]/td/div/div/table/tbody/tr[1]/th/input |
|    | Click Button | xpath=/html/body/div[3]/div[11]/button[1] |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/header/button[3] |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[2]/button |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | sleep | 2s |

| Click On Workshop In the server |
|    | sleep | 2.5s |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[8]/a |
|    | sleep | 2.5s |

| Create a new Event |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div/button[1] |

| Select a Country |
|    | Wait Until Page Contains Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[6]/td[2]/span/div/input |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[6]/td[2]/span/div/input | ${country} |

| Select an Area |
|    | Wait Until Page Contains Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[7]/td[2]/span/div/input |
|    | Input Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[7]/td[2]/span/div/input | ${area} |

| Select a Course |
|    | Input Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[8]/td[2]/span/div/input | ${course} |

| Select a new Area |
|    | Wait Until Page Contains Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[7]/td[2]/span/div/input |
|    | Input Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[7]/td[2]/span/div/input | ${new_area} |

| Select Event Type |
|    | Input Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[10]/td[2]/span/div/input | ${event_type} |

| Create a session |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[1]/a |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div//tbody/tr[1]/td/a |

| Choose session date |
|    | Click Image | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div//img |

| Choose Today |
|    | Click Button | xpath=//*[@id="ui-datepicker-div"]/div[2]/button[1] |

| Start Time |
|    | [Arguments] | ${start_time} |
|    | Clear Element Text | xpath=html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[2]/input |
|    | Input Text | xpath=html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[2]/input | ${start_time} |
|    | Set Global Variable | ${start_time} |

| End Time |
|    | [Arguments] | ${end_time} |
|    | Clear Element Text | xpath=html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[3]/input |
|    | Input Text | xpath=html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[3]/input | ${end_time} |
|    | Set Global Variable | ${end_time} |

| Add a Trainer |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[2]/a |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/table/tbody/tr[1]/td/a |
|    | Select From List By Label | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[2]/select | ${trainer_server} |

| Add another Trainer |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[2]/a |
|    | sleep | 1s |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div[2]/div/div/div/div/div/table/tbody/tr[2]/td/a |
|    | Select From List By Label | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[2]/select | ${another_trainer_server} |

| Save Event |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[2]/button |

| Assert Successfull Creation |
|    | Wait Until Page Contains Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/span[2] |
|    | Element Should Contain | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/span[2] | be.event, |

| Store Server_EventID from the event |
|    | ${event_id}= | Get Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[1]/td[2]/span/span |
|    | Set Global Variable | ${event_id} |

| Compare Sever_EventID With ClientID |
|    | Element Should Contain | xpath=//*[@id="eventsTable"]/div/table | ${event_id} |

| Create a participant |

| Delete Last Created Event From Server |
|    | Store Server_EventID From the table |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/th/input |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[2]/div/div[1]/div/div[2]/button |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[2]/div/div[1]/div/div[2]/ul/li[4] |
|    | Confirm Action |

| Edit last created event (General Edit) |
|    | sleep | 2s |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1] |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[1]/div/button |
|    | Select an Area |
|    | Clear Element Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/div/textarea |
|    | Input Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/div/textarea | ${edit_comment_server} |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[2]/button |

| Check For the client_updated Event On Server |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1] |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/div/span | ${edit_comment_client} |

| Edit last created event(Add Trainer) |
|    | Edit last created event |
|    | Add a Trainer |

| Edit last created event (Add multiple Trainer) |
|    | Edit last created event |
|    | Add another Trainer |

| Click On Workshop To Open The Offline Module |
|    | Wait Until Page Contains Element | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[3]/a |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[3]/a |

| Open the offline module (Workshop) |
|    | [Documentation] | 1-Click On Partner |
|    | ... | 2-select workshop from the list in the left |
|    | ... | 3-Click Offline Module Button |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[1]/td/ul/li[4]/a |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[1]/div[1]/div[4]/ul/li[3]/a |
|    | Click Button | xpath=/html/body/div[2]/div[2]/div/div/div/div/div[4]/div/div/button[1] |
|    | Select Window | Title = Workshops |

| Load the data |
|    | Wait Until Page Contains Element | xpath=//*[@id="eventsTable"] |

| Create event from client |
|    | Wait Until Page Contains Element | xpath=//*[@id="eventsTable"]/div/div[3]/div[2]/span/span |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/div[3]/div[2]/span/span |
|    | Select From List By Value | xpath=//*[@id="country"] | 30 |
|    | Select From List By Value | xpath=//*[@id="area"] | 72 |
|    | Select From List By Value | xpath=//*[@id="course"] | 997 |
|    | Select From List By Value | xpath=//*[@id="eventType"] | 2 |

| Create session from client |
|    | Press Key | xpath=//*[@id="sessionDate_1"] | 02032017 |
|    | Press Key | xpath=//*[@id="sessionStartTime_1"] | 0200PM |
|    | Press Key | xpath=//*[@id="sessionEndTime_1"] | 0600PM |

| Save event and sync with server |
|    | Click Button | xpath=//*[@id="saveForm"] |
|    | Click Button | xpath=//*[@id="back_to_list"] |
|    | Sync the data |

| Store client_eventID |
|    | Sleep | 4s |
|    | ${client_event_id}= | Get Text | xpath=//*[@id="id"] |
|    | Set Global Variable | ${client_event_id} |

| Compare client_event id with server id |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table | ${client_event_id} |

| Sync the data |
|    | Click Link | xpath=//*[@id="sync_data"] |
|    | Sleep | 40s |

| Go to the offline module |
|    | Partner login |
|    | Open the offline module (Workshop) |
|    | Load the data |
|    | Sleep | 4s |

| Check for the edited event on client (General Edit) |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Element should Contain | xpath=//*[@id="main_container"]/div/table/tbody/tr[2]/td[1]/table/tbody/tr[5]/td[2]/select | ${area} |

| Check for the edited event on client (Add Trainer) |
|    | Wait Until Page Contains Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Element Should Contain | xpath=//*[@id="trainersList_chosen"]/ul/li[1]/span | ${trainer_server} |

| Check for the edited event on client(Add Multiple Trainer) |
|    | Comment | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Comment | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Element Should Contain | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] | ${another_trainer_server} |
|    | Element Should Contain | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] | ${trainer_server} |

| Select a trainer on client |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Input Text | xpath=//*[@id="trainersList_chosen"]/ul/li/input | ${trainer} |
|    | Press Key | xpath=//*[@id="trainersList_chosen"]/ul/li/input | \\13 |

| Edit last created event |
|    | Click on last created event |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[1]/div/button |
|    | sleep | 2s |

| Check for the edited event on client(Remove Trainer) |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Comment | Element Should Contain | xpath=//*[@id="trainersList_chosen"]/ul/li[1]/span |
|    | Page Should Not Contain | ${trainer} |

| Check for the edited event on client(Remove Multiple Trainers) |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Page Should Not Contain | ${trainer} |
|    | Page Should Not Contain | ${another_trainer} |

| Create another session |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[1]/a |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div//tbody/tr[2]/td/a |

| Create another session from server |
|    | Create another session |
|    | Choose session date |
|    | Choose Today |
|    | Start Time | 5 |
|    | End Time | 9 |

| Check for the edited event on client (Add Session) |
|    | sleep | 1s |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |
|    | Click Link | xpath=//*[@id="ui-id-1"] |
|    | Element Should Contain | xpath=//*[@id="sessions_num"] | ${session_num} |

| Save event and store session number |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[2]/button |
|    | sleep | 2s |
|    | ${session_num}= | Get Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[5]/td[2]/span/span |
|    | Set Global Variable | ${session_num} |

| Edit last created event on client |
|    | Wait Until Page Contains Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] |
|    | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1]/td[7] |
|    | Click Button | xpath=//*[@id="enable_editing_button"] |

| Create another session from client |
|    | Click Link | xpath=//*[@id="sessionstable"]/tbody/tr[3]/td/a |
|    | Press Key | xpath=//*[@id="sessionDate_2"] | 06032017 |
|    | Press Key | xpath=//*[@id="sessionStartTime_2"] | 0600PM |
|    | Press Key | xpath=//*[@id="sessionEndTime_2"] | 0800PM |

| Store session number on client |
|    | Comment | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[2]/button |
|    | ${session_num}= | Get Text | xpath=//*[@id="sessions_num"] |
|    | Set Global Variable | ${session_num} |

| Check for the edited event on server(Add Session) |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1] |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[1]/div/button |
|    | sleep | 2s |
|    | Element Should Contain | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[5]/td[2]/span/span | ${session_num} |

| Delete the last created trainer |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/th/input |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[2]/div/div[1]/div/div[2]/button |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[2]/div/div[1]/div/div[2]/ul/li[4] |
|    | Confirm Action |

| [TestCase]Delete The Created Event From Server |
|    | Admin Login |
|    | Delete Event From Server |
|    | Assert Event Delete On Server |
|    | Close All Browsers |

| Delete Trainer |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[2]/a |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/table/tbody/tr[1]/td[4]/button |

| Store Server_EventID From the table |
|    | ${event_id}= | Get Text | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[1] |
|    | Set Global Variable | ${event_id} |

| Delete session from server |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/table/tbody/tr[1]/td[5]/button |

| Navigate to trainer page from server |
|    | Admin Login |
|    | Go To Partner Page On Server (from More dropdown list) |
|    | Click On Trainer MenuItem |
|    | sleep | 1s |

| Sort trainers names desc |
|    | sleep | 2s |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/thead/tr/th[3] |
|    | sleep | 2.5s |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/thead/tr/th[3] |

| Edit First trainer |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[2] |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[1]/div/button |
|    | Select From List By Label | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[1]/table/tbody/tr[4]/td[2]/span/select | Female |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[2]/table/tbody/tr[5]/td[2]/span/div/input | ${new_trainer_area_edit} |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/span/input | ${new_trainer_middlename_edit} |
|    | Click Button | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[2]/button |

| Select an edited trainer on client |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Input Text | xpath=//*[@id="trainersList_chosen"]/ul/li/input | ${new_trainer_firstname} |
|    | Press Key | xpath=//*[@id="trainersList_chosen"]/ul/li/input | \\13 |
|    | Page Should Contain | ${new_trainer_middlename_edit} |

| Delete session on client |
|    | Click Element | xpath=//*[@id="sessionstable"]/tbody/tr[3]/td[6] |

| Edit session on client |
|    | Press Key | xpath=//*[@id="sessionDate_1"] | 08052017 |
|    | Press Key | xpath=//*[@id="sessionStartTime_1"] | 0900PM |
|    | Press Key | xpath=//*[@id="sessionEndTime_1"] | 1100PM |
|    | Input text | xpath=//*[@id="sessionComment_1"] | Edited Session |

| Edit event on client |
|    | Select From List By Value | xpath=//*[@id="area"] | 284 | #Badakhsh |
|    | Select From List By Value | xpath=//*[@id="course"] | 2723 | #Leading Your Team |
|    | Input Text | xpath=//*[@id="comments"] | ${edit_comment_client} |
|    | Click Button | xpath=//*[@id="updateForm"] |
|    | Click Button | xpath=//*[@id="back_to_list"] |

| Update event and sync with server |
|    | Click Element | xpath=//*[@id="updateForm"] |
|    | Click Button | xpath=//*[@id="back_to_list"] |
|    | Sync the data |
|    | Comment | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |

| Remove a trainer on client |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Click Element | xpath=//*[@id="trainersList_chosen"]/ul/li[1] |

| Select another trainer on client |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Input Text | xpath=//*[@id="trainersList_chosen"]/ul/li/input | ${trainer} |
|    | Press Key | xpath=//*[@id="trainersList_chosen"]/ul/li/input | \\13 |
|    | Input Text | xpath=//*[@id="trainersList_chosen"]/ul/li/input | ${another_trainer} |
|    | Press Key | xpath=//*[@id="trainersList_chosen"]/ul/li/input | \\13 |

| Remove another trainer on client |
|    | Click Link | xpath=//*[@id="ui-id-2"] |
|    | Click ELement | xpath=//*[@id="trainersList_chosen"]/ul/li[1]/a |
|    | Click ELement | xpath=//*[@id="trainersList_chosen"]/ul/li[1]/a |
|    | Click ELement | xpath=//*[@id="trainersList_chosen"]/ul/li[1]/a |

| Assert successful trainer update |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | Element Should Contain | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[2] | ${new_trainer_middlename_edit} |

| Assert successful trainer delete |
|    | Element Should Not Contain | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[2] | ${new_trainer_middlename_edit} |

| Assert successful event update (Add Session) |
|    | sleep | 3s |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[5]/td[2]/span/span | 2 |

| Assert successful event update (General Edit) |
|    | sleep | 2s |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/div/span | ${edit_comment_server} |

| Assert successful event update (ِAdd Trainer) |
|    | sleep | 3s |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer_server} |

| Assert successful event update (ِRemove Trainer) |
|    | sleep | 3s |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | Element Should Not Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer_server} |

| Delete Trainer on server |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[2] |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/table/tbody/tr[1]/td[4]/button |

| Assert successful event update (ِAdd Multiple Trainer) |
|    | sleep | 3s |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer_server} |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${another_trainer_server} |

| Assert successful event update (ِRemove Multiple Trainer) |
|    | sleep | 3s |
|    | Click Link | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[1]/td[1]/h2/span/a |
|    | Element Should Not Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer_server} |
|    | Element Should Not Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${another_trainer_server} |

| Assert successful event update (Remove Session) |
|    | sleep | 2s |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/table/tbody/tr[5]/td[2]/span/span | 1 |

| Save Event on client |
|    | Click Button | xpath=//*[@id="saveForm"] |
|    | Click Button | xpath=//*[@id="back_to_list"] |

| Check for the number of sessions on client |
|    | sleep | 2s |
|    | Element Should Contain | xpath=//*[@id="sessions_num"] | ${session_num} |

| Check for the edited event on server(Update Session) |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1] |
|    | Click Button | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr[2]/td[1]/div/div[2]/span[1]/div/button |
|    | sleep | 2s |
|    | Page Should Contain | Edited Session |

| Update event and sync with server (Don't Click On the last event) |
|    | Click Element | xpath=//*[@id="updateForm"] |
|    | Click Button | xpath=//*[@id="back_to_list"] |
|    | Sync the data |
|    | Comment | Click Element | xpath=//*[@id="eventsTable"]/div/table/tbody/tr[1] |

| Check for the edited event on server(Add Trainer) |
|    | Element Should Contain | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1]/td[7] | ${trainer} |

| [TestCase]Create Event without trainer from server |
|    | [Tags] | Create Event |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event |
|    | Sleep | ${Delay} |
|    | Assert Successfull Creation |

| [TestCase]Create event from client |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save event and sync with server |

| Check evaluation |
|    | Click Element | xpath=//*[@id="ui-id-4"] |
|    | Click Element | xpath=//*[@id="mybtn_1"] |
|    | Radio Button Should Be Set To | course_assessment_val | ${evaluation_item#1} |
|    | Radio Button Should Be Set To | content_assessment_val | ${evaluation_item#2} |
|    | Radio Button Should Be Set To | apply_assessment_val | ${evaluation_item#3} |
|    | Radio Button Should Be Set To | slides_assessment_val | ${evaluation_item#4} |
|    | Radio Button Should Be Set To | activities_assessment_val | ${evaluation_item#5} |
|    | Radio Button Should Be Set To | discussions_assessment_val | ${evaluation_item#6} |
|    | Radio Button Should Be Set To | workbooks_assessment_val | ${evaluation_item#7} |
|    | Radio Button Should Be Set To | knowledge_assessment_val | ${evaluation_item#8} |
|    | Radio Button Should Be Set To | interests_assessment_val | ${evaluation_item#9} |
|    | Radio Button Should Be Set To | explained_assessment_val | ${evaluation_item#10} |
|    | Radio Button Should Be Set To | encouraged_assessment_val | ${evaluation_item#11} |
|    | Radio Button Should Be Set To | provided_assessment_val | ${evaluation_item#12} |
|    | Radio Button Should Be Set To | presented_assessment_val | ${evaluation_item#13} |
|    | Radio Button Should Be Set To | tactful_assessment_val | ${evaluation_item#14} |
|    | Radio Button Should Be Set To | organized_assessment_val | ${evaluation_item#15} |
|    | Radio Button Should Be Set To | venue_assessment_val | ${evaluation_item#16} |
|    | Radio Button Should Be Set To | duration_assessment_val | ${evaluation_item#17} |
|    | Radio Button Should Be Set To | overall_assessment_val | ${evaluation_item#18} |
|    | Radio Button Should Be Set To | recommend_assessment_val | ${evaluation_item#19} |

| Save Evaluation's value |
|    | Click On Evaluation To edit |
|    | sleep | 2s |
|    | ${evaluation_item#1}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[1]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#1} |
|    | ${evaluation_item#2}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[2]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#2} |
|    | ${evaluation_item#3}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[3]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#3} |
|    | ${evaluation_item#4}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[4]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#4} |
|    | ${evaluation_item#5}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[5]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#5} |
|    | ${evaluation_item#6}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[6]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#6} |
|    | ${evaluation_item#7}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[7]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#7} |
|    | ${evaluation_item#8}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[1]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#8} |
|    | ${evaluation_item#9}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[2]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#9} |
|    | ${evaluation_item#10}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[3]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#10} |
|    | ${evaluation_item#11}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[4]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#11} |
|    | ${evaluation_item#12}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[5]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#12} |
|    | ${evaluation_item#13}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[6]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#13} |
|    | ${evaluation_item#14}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[7]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#14} |
|    | ${evaluation_item#15}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#15} |
|    | ${evaluation_item#16}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#16} |
|    | ${evaluation_item#17}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[3]/td/table/tbody/tr[3]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#17} |
|    | ${evaluation_item#18}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#18} |
|    | ${evaluation_item#19}= | Get Text | xpath=/html/body/div[2]/div[2]/div/div/div[4]/div/div/table[3]/tbody/tr[4]/td/table/tbody/tr[2]/td[2]/span/span |
|    | Set Global Variable | ${evaluation_item#19} |

| Click on last created event |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[1]/div/table/tbody/tr[1] |
|    | sleep | 2s |

| Click On Evaluation To edit |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[4] |
|    | Click Element | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div[4]/div[1]/div/div/div/div/table/tbody/tr[1]/td[5] |

| Select Evaluation's value |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[1]/td[2]/span/span/div[2]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[2]/td[2]/span/span/div[3]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[3]/td[2]/span/span/div[4]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[4]/td[2]/span/span/div[2]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[5]/td[2]/span/span/div[5]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[6]/td[2]/span/span/div[1]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[1]/td/table/tbody/tr[7]/td[2]/span/span/div[5]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[1]/td[2]/span/span/div[1]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[2]/td[2]/span/span/div[3]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[3]/td[2]/span/span/div[4]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[4]/td[2]/span/span/div[5]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[5]/td[2]/span/span/div[3]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[6]/td[2]/span/span/div[1]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[2]/td/table/tbody/tr[7]/td[2]/span/span/div[1]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/span/span/div[1]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/span/span/div[5]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[3]/td/table/tbody/tr[3]/td[2]/span/span/div[4]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/span/span/div[5]/span |
|    | Click Element | xpath=/html/body/div[2]/div[2]/div/div/div[3]/div/div/table[3]/tbody/tr[4]/td/table/tbody/tr[2]/td[2]/span/span/div[1]/span |
|    | Save Evaluation |

| Click On Evaluation To add |
|    | Click Element | xpath=/html/body/div/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/ul/li[4] |
|    | Click Link | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div[4]/div[1]/div/div/div/div/table/tbody/tr[1]/td/a |

| Save Evaluation |
|    | Sleep | 2s |
|    | Click button | xpath=/html/body/div[2]/div[11]/button[1] |

| Update session from server |
|    | sleep | ${Delay} |
|    | Start Time | 2 |
|    | End Time | 4 |

| Update Start Time |
|    | [Arguments] | ${start_time} |
|    | Clear Element Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[2]/input |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[2]/input | ${start_time} |
|    | Set Global Variable | ${start_time} |

| Update End Time |
|    | [Arguments] | ${end_time} |
|    | Clear Element Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[3]/input |
|    | Input Text | xpath=/html/body/div[1]/table/tbody/tr[2]/td[2]/div/div/div/div[2]/div/div[4]/div/div/div[1]/div/div/div/div/div/div/div/div/div/div/div[4]/div/div/span[3]/input | ${end_time} |
|    | Set Global Variable | ${end_time} |
