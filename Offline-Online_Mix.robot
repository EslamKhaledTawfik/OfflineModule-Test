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
|    | Wait For Condition |

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
|    | wait for page load  |

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
