---
layout: default
title: The H-Bridge
---

# The H-Bridge

This circuit is the bane of every electronics student around the world. Around this circuit are the remains of many an ambitious student, certain they were amongst the elite. 

Fortunately, we're not ambitious: we just want to build a motor control circuit.

## Transistors and Diodes

Transistors are digital switches; diodes only let current flow in one direction. Motors are large coils of wire, and when current flows through them, a magnetic field is induced, which gives rise to the rotation of a rotor. We use transistors to let us switch loads larger than our microcontroller can handle, and we use diodes to make sure that when the motor stops, the back current surge does not destroy everything in our circuit.

Today, we're going to build our own motor control circuit.

## The Circuit

There are two pages you'll want to study with your partner: [the overview](http://www.robotroom.com/BipolarHBridge.html) and [the build itself](http://www.robotroom.com/BipolarHBridge2.html). 

You'll want to work in your larger teams again: two groups of TAD students should be working on building H-Bridges, and one group of CS students should be working out how they think they will control this circuit with the Arduino. 

Pull your power from the 5V pin on the Arduino, the ground from the GND pin, and use digital pins 2 through 12 for controlling the H-bridge. (You won't need all of those pins; I'm just suggesting you leave pins 0, 1, and 13 alone.)

### Notes for the TAD students

I have quite a few transistors, but remember: you can burn them out.

Check, double-check, and then triple-check your work. The way to do this:

1. Redraw the circuit diagram on a piece of paper. Make it large, and clearly label everything.
1. As a pair, talk through the entire circuit. Verify that every single component is drawn correctly in the schematic.
1. One of you sits with the circuit, one of you sits with your large diagram. The "real circuit reader" talks through each-and-every connection; the "paper circuit reader" checks each circuit connection with the schematic. Put a small check mark next to every connection you've verified. One check mark should go at each end of the wire.
1. Now, swap positions, and reverse the previous process: The person with the schematic should call out each of the connections, and the person with the physical circuit should verify each connection is as described. The person who, in step three, had the circuit should now be reading the schematic, and visa versa.

This will take some time. This is the process I go through when designing and building circuits... I go from the datasheet, which describes the individual part, to the schematic, which shows it in the circuit, and then the physical circuit, to make sure that I correctly connected everything... and then back again. That cycle needs to be repeated, checked, and verified, if you want to have confidence in the work you do.

[Please upload this when you are done to Moodle](http://moodle.berea.edu/mod/assignment/view.php?id=61672).

### Notes for the CS students
[The table at the bottom of the overview page](http://www.robotroom.com/BipolarHBridge.html) is a really good place to start. Also, you may find [this Instructable to be useful](http://www.instructables.com/id/H-Bridge-on-a-Breadboard/). Do you see where they use switches? Perhaps you could use another set of 2N3904 transistors instead?

Or, instead of transistors, you may be able to achieve the same effect of applying VCC and GND by using <code>pinMode(OUTPUT)</code> and then using <code>digitalWrite(HIGH)</code> and <code>digitalWrite(LOW)</code>.

You might want to plan out/write more than one control program while your colleagues are developing their circuits. I suggest something that turns on the motor in one direction for several seconds and then stops for several sections as a starting point---nothing fancy.

You can use an LED in place of the H-Bridge to test out your code while you're waiting for the actual circuit. Also, you can use 

<code>Serial.println()</code>

statements to put debugging information in your program. If you open the serial monitor in the Arduino environment, you'll be able to see messages that it sends back to your laptop.

