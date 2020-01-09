//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc-no-grid.png](tjamc-no-grid.png "The Jesus and Mary Chain")
 ![tjamc-with-grid.png](tjamc-with-grid.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// No border, has a fill
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = lightRed
canvas.defaultBorderWidth = 100
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 280, height: 280)

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = lightBlue
canvas.defaultBorderWidth = 100
canvas.drawEllipse(at: Point(x: 350, y: 200), width: 280, height: 280)

// Has a border, no fill


//Write the texts
canvas.drawText(message: "Friday", at: Point(x: 25, y: 570), size: 10)
canvas.drawText(message: "December 4 1987", at: Point(x: 25, y: 550), size: 10)
canvas.drawText(message: "8 pm show", at: Point(x: 25, y: 530), size: 10)
canvas.drawText(message: "With", at: Point(x: 125, y: 570), size: 10)
canvas.drawText(message: "Social distortion", at: Point(x: 125, y: 550), size: 10)
canvas.drawText(message: "and opal", at: Point(x: 125, y: 530), size: 10)
canvas.drawText(message: "Hollywood palladium", at: Point(x: 275, y: 570), size: 10)
canvas.drawText(message: "6215 Sunset blvd.", at: Point(x: 275, y: 550), size: 10)
canvas.drawText(message: "los angeles, california", at: Point(x: 275, y: 530), size: 10)
canvas.drawText(message: "the jesus", at: Point(x: 25, y: 450), size: 35)
canvas.drawText(message: "and mary chain", at: Point(x: 25, y: 400), size: 35)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

