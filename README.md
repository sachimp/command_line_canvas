# command_line_canvas

This is a ruby command line program which simulates a bitmap editor, such as paint. It takes commands in as a string, and manipulates a 'canvas' made up of a grid of letters, accordingly.

I have tried to use an MVC style framework with the design assumption that a save/load feature may be added in the future, and to satisfy the Single-Responsibility Principle.

It is a WIP, and I will continue to update it as and when I can.

17/05/22

commands cannot be accessed through the router as of yet. A demonstration of my thinking of how methods will work can be found in lib/Canvas.rb, and that file can be run to see those manipulations working correctly.
