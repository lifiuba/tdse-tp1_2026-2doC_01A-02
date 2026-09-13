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
            "text": "actuator_statechart Copy Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_LED_ON\n    in event EV_LED_OFF\n    in event EV_LED_BLINKING\n"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -155,
          "y": -130
        },
        "size": {
          "height": 104,
          "width": 131
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_OFF",
            "fontSize": 11
          }
        },
        "z": 2,
        "id": "78895411-2d12-4656-ac9d-e7700d8766ef"
      },
      {
        "position": {
          "x": -127,
          "y": -342
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "z": 7,
        "id": "eab2a46a-29e3-4cb4-9b5d-f71a36b5febc",
        "embeds": [
          "fa00140b-c60b-41b9-ab7c-445a429942d8"
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
          "x": -127,
          "y": -327
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        },
        "parent": "eab2a46a-29e3-4cb4-9b5d-f71a36b5febc",
        "z": 8,
        "id": "fa00140b-c60b-41b9-ab7c-445a429942d8"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "eab2a46a-29e3-4cb4-9b5d-f71a36b5febc"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": "58.333%",
              "dy": "8.333%"
            },
            "name": "topLeft"
          },
          "id": "78895411-2d12-4656-ac9d-e7700d8766ef",
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
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "z": 9,
        "id": "bdf45e53-0980-4d4e-92eb-baf53a5c2f59"
      },
      {
        "position": {
          "x": 187,
          "y": -131
        },
        "size": {
          "height": 104,
          "width": 131
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_ACTUANDO",
            "fontSize": 11
          }
        },
        "z": 14,
        "id": "6b4e909e-c192-4c1a-a2ee-04b486f0e331"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6b4e909e-c192-4c1a-a2ee-04b486f0e331"
        },
        "target": {
          "id": "78895411-2d12-4656-ac9d-e7700d8766ef",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "67.176%",
              "dy": "43.269%",
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
                "text": "EV_LED_OFF"
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
        "id": "cb6ffecc-72d5-4daa-8755-4b91b054e747",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 119,
            "y": -85
          }
        ]
      },
      {
        "position": {
          "x": 558,
          "y": -142
        },
        "size": {
          "height": 113,
          "width": 134
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_ON",
            "fontSize": 11
          }
        },
        "z": 19,
        "id": "b4528c02-7c8b-46e8-870b-09d5ad5d49a2"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6b4e909e-c192-4c1a-a2ee-04b486f0e331"
        },
        "target": {
          "id": "b4528c02-7c8b-46e8-870b-09d5ad5d49a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "24.627%",
              "dy": "53.982%",
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
                "text": "EV_LED_ON"
              }
            },
            "position": {}
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
        "id": "48f7205c-33c0-43fe-8371-efceead3e807",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b4528c02-7c8b-46e8-870b-09d5ad5d49a2"
        },
        "target": {
          "id": "6b4e909e-c192-4c1a-a2ee-04b486f0e331",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "97.71%",
              "dy": "64.423%",
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
                "text": "EV_LED_BLINKING"
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
        "id": "52809dc3-75bf-47d0-8958-4b76c7a706ad",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "78895411-2d12-4656-ac9d-e7700d8766ef"
        },
        "target": {
          "id": "6b4e909e-c192-4c1a-a2ee-04b486f0e331",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0%",
              "dy": "63.462%",
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
                "text": "EV_LED_BLINKING"
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
        "id": "5bfc75b6-539a-4d81-bc08-13ae2dd5157e",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -1,
            "y": -20
          },
          {
            "x": 34,
            "y": -20
          },
          {
            "x": 157,
            "y": -44
          }
        ]
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
          "moduleName": "ActuatorStatechartCopy",
          "statemachinePrefix": "actuatorStatechartCopy",
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