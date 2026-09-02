{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_BTN_PRESSED\n    in event EV_BTN_FALLING\n    in event EV_SYS_DOWN\n    in event EV_BTN_RELEASED\n    in event EV_BTN_RISING\n    in event EV_SYS_UP\n    in event EV_BTN_ERROR"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -342,
          "y": -176
        },
        "size": {
          "height": 101,
          "width": 173
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_UP",
            "fontSize": 11
          }
        },
        "id": "23333e1c-af34-41e5-bc73-985d7012490c",
        "z": 49
      },
      {
        "type": "Note",
        "attrs": {
          "root": {
            "display": ""
          },
          "body": {
            "filter": {
              "args": {}
            }
          },
          "label": {
            "text": "ERROR son identicos, es un ruido que invoca a un estado falso"
          }
        },
        "position": {
          "x": -34,
          "y": -301
        },
        "size": {
          "width": 450.71875,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "40e0140a-25f0-4a71-9f49-d0316641e291",
        "z": 68
      },
      {
        "position": {
          "x": 275,
          "y": -186
        },
        "size": {
          "height": 104,
          "width": 130
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_FALLING",
            "fontSize": 11
          }
        },
        "id": "ab623ff4-4e87-4e0a-9de2-b5f4e8a99160",
        "z": 70
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "23333e1c-af34-41e5-bc73-985d7012490c"
        },
        "target": {
          "id": "ab623ff4-4e87-4e0a-9de2-b5f4e8a99160",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "1.538%",
              "dy": "39.423%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_PRESSED"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "48ff5b91-fdd4-470d-884c-38ea55aa1cf4",
        "z": 71,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ab623ff4-4e87-4e0a-9de2-b5f4e8a99160"
        },
        "target": {
          "id": "23333e1c-af34-41e5-bc73-985d7012490c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "61.386%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ERROR"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5a4fa728-3998-488f-b9f1-42a52e52452d",
        "z": 71,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -339,
          "y": 10
        },
        "size": {
          "height": 115,
          "width": 167
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING",
            "fontSize": 11
          }
        },
        "id": "94e79387-9d55-426b-a75d-4913722d106d",
        "z": 75
      },
      {
        "position": {
          "x": 248,
          "y": 21
        },
        "size": {
          "height": 101,
          "width": 173
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_DOWN",
            "fontSize": 11
          }
        },
        "id": "89a68509-1e8f-494f-8803-49768d82b0d9",
        "z": 78
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "94e79387-9d55-426b-a75d-4913722d106d"
        },
        "target": {
          "id": "89a68509-1e8f-494f-8803-49768d82b0d9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0.578%",
              "dy": "53.465%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ERROR"
              }
            },
            "position": {
              "offset": 19,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "01312c42-fc12-4324-92ff-6306703120b4",
        "z": 79,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ab623ff4-4e87-4e0a-9de2-b5f4e8a99160"
        },
        "target": {
          "id": "89a68509-1e8f-494f-8803-49768d82b0d9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "32.948%",
              "dy": "5.941%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 10 s / raise EV_SYS_DOWN"
              }
            },
            "position": {
              "distance": 0.5560747663551402,
              "offset": -55,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2278037a-6647-4439-938c-a120267c958d",
        "z": 79,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "89a68509-1e8f-494f-8803-49768d82b0d9"
        },
        "target": {
          "id": "94e79387-9d55-426b-a75d-4913722d106d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.018%",
              "dy": "24.348%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_RELEASED"
              }
            },
            "position": {
              "distance": 0.5047619047619047,
              "offset": 13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e9728c99-25ae-444c-9cc1-dd4286c8978d",
        "z": 79,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "94e79387-9d55-426b-a75d-4913722d106d"
        },
        "target": {
          "id": "23333e1c-af34-41e5-bc73-985d7012490c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.867%",
              "dy": "89.109%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 10 s / raise EV_SYS_UP"
              }
            },
            "position": {
              "distance": 0.4647058823529412,
              "offset": -48,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "355f1e8d-b7b1-466a-b79b-a7e97dacd595",
        "z": 80,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -314,
          "y": -401
        },
        "size": {
          "height": 119,
          "width": 119
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "35124864-20e5-4101-9175-824694bb189c",
        "z": 81,
        "embeds": [
          "77e0d0e3-6f8e-45a0-9c43-496298414e8c"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -314,
          "y": -285
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "77e0d0e3-6f8e-45a0-9c43-496298414e8c",
        "z": 82,
        "parent": "35124864-20e5-4101-9175-824694bb189c"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "35124864-20e5-4101-9175-824694bb189c"
        },
        "target": {
          "id": "23333e1c-af34-41e5-bc73-985d7012490c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.289%",
              "dy": "3.96%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5a4f3765-1504-444f-b767-128537d7fba0",
        "z": 83,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "SensorStatechart",
          "statemachinePrefix": "sensorStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}