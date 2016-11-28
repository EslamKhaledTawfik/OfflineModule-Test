| *** Settings *** |
| Test Teardown  | Close All Browsers |
| Resource       | Keywords.robot |

| *** Test Cases *** |
| Create event from client & add a session |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save event and sync with server |
|    | Edit last created event on client |
|    | Create another session from client |
|    | Store session number on client |
|    | Store client_eventID |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Compare client_event id with server id |
|    | Check for the edited event on server(Add Session) |

| Create event from client & update a session |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save event and sync with server |
|    | Edit last created event on client |
|    | Edit session on client |
|    | Store client_eventID |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Compare client_event id with server id |
|    | Check for the edited event on server(Update Session) |

| Create event from client & add a trainer |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save event and sync with server |
|    | Edit last created event on client |
|    | Select a trainer on client |
|    | Store client_eventID |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Compare client_event id with server id |
|    | Check for the edited event on server(Add Trainer) |

| Create and update event from client |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save Event on client |
|    | Edit last created event on client |
|    | Edit event on client |
|    | Sync the data |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Check For the client_updated Event On Server |

| Create and update event from client (Add Participant ) |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Save Event on client |
|    | Sync the data |
|    | Edit last created event on client |
|    | Edit event on client (Add Participant ) |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Click on last created event |
|    | Check For the client_updated Event (Add Participant) on Server |

| Create event from client & add multiple sessions |
|    | Go to the offline module |
|    | Create event from client |
|    | Create session from client |
|    | Create another session from client |
|    | Save event and sync with server |
|    | Edit last created event on client |
|    | Store client_eventID |
|    | Store session number on client |
|    | Update event and sync with server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Compare client_event id with server id |
|    | Check for the edited event on server(Add Session) |
