| *** Settings *** |
| Test Teardown  | Close All Browsers |
| Resource       | Keywords.robot |

| *** Test Cases *** |
| Create Event Without Trainer From Server |
|    | [Tags] | Create Event |
|    | Admin Login |
|    | Create Event Without Trainer From Server |
|    | Save Event On Server |
|    | Sleep | ${Delay} |
|    | Assert Successfull Creation |

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

| Create Trainer From Server |
|    | Create trainer from server |

| Update Trainer From Server |
|    | Navigate to trainer page from server |
|    | Sort trainers names desc |
|    | Edit First trainer |
|    | Assert successful trainer update |

| Delete Trainer From Server |
|    | Navigate to trainer page from server |
|    | Sort trainers names desc |
|    | Delete the last created trainer |

| Update Event From Server(General Edit) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event (General Edit) |
|    | Assert successful event update (General Edit) |

| Update Event From Server(Add Session) |
|    | [Setup] | [TestCase]Create Event without trainer from server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Create another session from server |
|    | Save Event On Server |
|    | Assert successful event update (Add Session) |

| Update Event From Server(Remove Session) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Delete session from server |
|    | Save Event On Server |
|    | Assert successful event update (Remove Session) |

| Update Event From Server (Add Trainer) |
|    | [Setup] | [TestCase]Create Event without trainer from server |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event(Add Trainer) |
|    | Assert successful event update (ِAdd Trainer) |

| Update Event From Server (Remove Trainer) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Delete Trainer on server |
|    | Assert successful event update (ِRemove Trainer) |

| Update Event From Server (Add Multiple Trainer) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event (Add multiple Trainer) |
|    | Assert successful event update (ِAdd Multiple Trainer) |

| Update Event From Server (Remove Multiple Trainers) |
|    | Admin Login |
|    | Click On Workshop In the server |
|    | Edit last created event |
|    | Delete Trainer on server |
|    | Delete Trainer on server |
|    | Save Event On Server |
|    | Assert successful event update (ِRemove Trainer) |
