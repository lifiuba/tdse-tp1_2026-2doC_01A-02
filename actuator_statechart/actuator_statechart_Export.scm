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
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_LED_ON\n    in event EV_LED_OFF\n\ninternal:\n    var led_state: boolean"
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
          "width": 131,
          "height": 104
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_OFF",
            "fontSize": 11
          }
        },
        "id": "78895411-2d12-4656-ac9d-e7700d8766ef",
        "z": 2
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
        "id": "eab2a46a-29e3-4cb4-9b5d-f71a36b5febc",
        "z": 7,
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
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "fa00140b-c60b-41b9-ab7c-445a429942d8",
        "z": 8,
        "parent": "eab2a46a-29e3-4cb4-9b5d-f71a36b5febc"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "eab2a46a-29e3-4cb4-9b5d-f71a36b5febc"
        },
        "target": {
          "id": "78895411-2d12-4656-ac9d-e7700d8766ef",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "58.333%",
              "dy": "8.333%",
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
        "id": "bdf45e53-0980-4d4e-92eb-baf53a5c2f59",
        "z": 9,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 191,
          "y": -138
        },
        "size": {
          "width": 134,
          "height": 113
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_ON",
            "fontSize": 11
          }
        },
        "id": "b4528c02-7c8b-46e8-870b-09d5ad5d49a2",
        "z": 10
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "78895411-2d12-4656-ac9d-e7700d8766ef"
        },
        "target": {
          "id": "b4528c02-7c8b-46e8-870b-09d5ad5d49a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "2.239%",
              "dy": "32.743%",
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
                "text": "EV_LED_ON / led_state = true"
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
        "id": "8d3ca10e-1e6d-446c-a1d0-3906ed666c1b",
        "z": 11,
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
          "id": "78895411-2d12-4656-ac9d-e7700d8766ef",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.237%",
              "dy": "59.615%",
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
                "text": "EV_LED_OFF / led_state = false"
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
        "id": "a44f42f8-5223-43a7-a218-d259e44670ee",
        "z": 12,
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
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
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