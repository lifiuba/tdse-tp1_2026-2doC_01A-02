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
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    // Eventos de entrada provenientes del Sensor\n    in event EV_SYS_DOWN\n    in event EV_SYS_UP\n\n    // Eventos de salida dirigidos al Actuador\n    out event EV_LED_ON\n    out event EV_LED_OFF"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -223,
          "y": -261
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "9bb1585c-7ecd-4594-9764-6f0664ed0f94",
        "z": 4,
        "embeds": [
          "252dfdcf-2ca3-465a-b18b-da0bbf9d9c0a"
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
          "x": -223,
          "y": -246
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "252dfdcf-2ca3-465a-b18b-da0bbf9d9c0a",
        "z": 5,
        "parent": "9bb1585c-7ecd-4594-9764-6f0664ed0f94"
      },
      {
        "position": {
          "x": -261,
          "y": -124
        },
        "size": {
          "width": 143,
          "height": 97
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_ON",
            "fontSize": 11
          }
        },
        "id": "6d39eab6-b92d-459d-985b-949a5c4675e6",
        "z": 9
      },
      {
        "position": {
          "x": 248,
          "y": -127
        },
        "size": {
          "width": 144,
          "height": 99
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_OFF",
            "fontSize": 11
          }
        },
        "id": "e257c7f6-c240-4703-a947-3f4219089984",
        "z": 12
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6d39eab6-b92d-459d-985b-949a5c4675e6"
        },
        "target": {
          "id": "e257c7f6-c240-4703-a947-3f4219089984",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "6.944%",
              "dy": "45.455%",
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
                "text": "EV_SYS_UP / raise EV_LED_ON"
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
        "id": "aedf4d0b-983b-434b-a108-be571fec7f06",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9bb1585c-7ecd-4594-9764-6f0664ed0f94"
        },
        "target": {
          "id": "6d39eab6-b92d-459d-985b-949a5c4675e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "35.664%",
              "dy": "2.062%",
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
        "id": "d833d92b-90d4-4f1c-9d6a-35f20554532f",
        "z": 14,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e257c7f6-c240-4703-a947-3f4219089984"
        },
        "target": {
          "id": "6d39eab6-b92d-459d-985b-949a5c4675e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.308%",
              "dy": "55.67%",
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
                "text": "EV_SYS_DOWN / raise EV_LED_OFF"
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
        "id": "c7545bba-b8c3-4c04-a892-8088891c9956",
        "z": 15,
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
          "moduleName": "SystemStatechart",
          "statemachinePrefix": "systemStatechart",
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