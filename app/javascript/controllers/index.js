// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import FilterController from "./filter_controller"
application.register("filter", FilterController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import HideDivController from "./hide_div_controller"
application.register("hide-div", HideDivController)

import MapController from "./map_controller"
application.register("map", MapController)

import DragController from "./drag_controller"
application.register("drag", DragController)

import SwipeController from "./swipe_controller"
application.register("swipe", SwipeController)
