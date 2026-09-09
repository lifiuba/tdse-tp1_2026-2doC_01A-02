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
            "text": "system_statechart_ Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n\n    in event EV_SYS_CAR_ARRIVES\n    in event EV_SYS_BUTTON_PRESSED\n    in event EV_SYS_BUTTON_RELEASED\n    in event EV_SYS_CAR_LEAVES\n    in event EV_SYS_SENSOR_CAR\n\n\n    out event EV_ACT_BARRIER_OPEN\n    out event EV_ACT_BARRIER_CLOSE\n"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -25,
          "y": -298
        },
        "size": {
          "height": 184,
          "width": 207
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_CAR_WAIT",
            "fontSize": 11
          }
        },
        "id": "4492b6ea-01eb-405f-85a5-f2f9bc11bd95",
        "z": 5
      },
      {
        "position": {
          "x": -200,
          "y": -379
        },
        "size": {
          "height": 43,
          "width": 43
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "41e0d60b-7627-4623-a82a-1da5fc4479ab",
        "z": 6,
        "embeds": [
          "7bed9966-f3a6-484f-a017-f41fdd5563f9"
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
          "x": -200,
          "y": -364
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "7bed9966-f3a6-484f-a017-f41fdd5563f9",
        "z": 7,
        "parent": "41e0d60b-7627-4623-a82a-1da5fc4479ab"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "41e0d60b-7627-4623-a82a-1da5fc4479ab"
        },
        "target": {
          "id": "4492b6ea-01eb-405f-85a5-f2f9bc11bd95",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.106%",
              "dy": "15.761%",
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
        "id": "1c60b962-9af2-44fe-be46-c602f1a9077e",
        "z": 8,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 548,
          "y": -304
        },
        "size": {
          "height": 192,
          "width": 215
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BUTTON_WAIT",
            "fontSize": 11
          }
        },
        "id": "589c46ed-1e1c-4da0-ba20-2273cc742e6e",
        "z": 20
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "4492b6ea-01eb-405f-85a5-f2f9bc11bd95"
        },
        "target": {
          "id": "589c46ed-1e1c-4da0-ba20-2273cc742e6e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "3.865%",
              "dy": "50%",
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
                "text": "EV_SYS_CAR_ARRIVES "
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
        "id": "4105d01f-8d05-4708-869c-4da1c0c5c6c7",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 1256,
          "y": -304
        },
        "size": {
          "height": 192,
          "width": 215
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_OPEN",
            "fontSize": 11
          }
        },
        "id": "875cee87-83e9-48c2-82ef-14d33ca54e70",
        "z": 24
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "589c46ed-1e1c-4da0-ba20-2273cc742e6e"
        },
        "target": {
          "id": "875cee87-83e9-48c2-82ef-14d33ca54e70",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "3.721%",
              "dy": "51.042%",
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
                "text": "EV_SYS_BUTTON_PRESSED / raise EV_ACT_BARRIER_OPEN "
              }
            },
            "position": {
              "distance": 0.5182555780933062,
              "offset": -19,
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
        "id": "c29ddc72-facf-4df1-a59a-2288bbfe73b3",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 641,
          "y": -74
        },
        "size": {
          "height": 192,
          "width": 215
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_SENSOR_WAIT",
            "fontSize": 11
          }
        },
        "id": "c1cd3ff8-3eb6-458b-b020-632ba86f7923",
        "z": 38,
        "embeds": [
          "00791d0c-3edb-4c36-b04a-ceaaab4e703d"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "875cee87-83e9-48c2-82ef-14d33ca54e70"
        },
        "target": {
          "id": "c1cd3ff8-3eb6-458b-b020-632ba86f7923",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "77.674%",
              "dy": "57.813%",
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
                "text": "after 10 s"
              }
            },
            "position": {
              "distance": 0.29944108959546883,
              "offset": 15,
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
        "id": "460a7aaf-2daa-46c2-9200-7c0563507c33",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1344,
            "y": -32
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c1cd3ff8-3eb6-458b-b020-632ba86f7923"
        },
        "target": {
          "id": "4492b6ea-01eb-405f-85a5-f2f9bc11bd95",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "55.072%",
              "dy": "95.109%",
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
                "text": "EV_SYS_CAR_LEAVES / raise EV_ACT_BARRIER_CLOSE"
              }
            },
            "position": {
              "distance": 0.5143219349674643,
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
        "id": "d920b2f9-207d-4753-b829-087c9bd2724d",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 407,
            "y": 36
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c1cd3ff8-3eb6-458b-b020-632ba86f7923"
        },
        "target": {
          "id": "c1cd3ff8-3eb6-458b-b020-632ba86f7923",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.628%",
              "dy": "99.479%",
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
                "text": "EV_SYS_SENSOR_CAR"
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
        "id": "00791d0c-3edb-4c36-b04a-ceaaab4e703d",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 738,
            "y": 176
          },
          {
            "x": 787,
            "y": 218
          }
        ],
        "parent": "c1cd3ff8-3eb6-458b-b020-632ba86f7923"
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