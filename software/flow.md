---
layout: default
title: Flow for the Arduino
---

# Electronics... without programming

The challenge we face in *Craft of Electronics* is that we only have 14 weeks.
As we learn digital (and some analog) electronics in the context of the [Berea
Contrast House]({{ site.base }}/bereacontrasthouse/), we don't have time to program an Arduino in C++. **There simply is not time**.

<p align="center">
  <img src="{{ site.base }}/images/flow-for-the-arduino.png" />
</p>

## Enter Flow

Flow was developed to provide students a powerful way to program their Arduino.
Specifically, we look at our code as a **flow** of data from one block to the
next. Looking at the diagram above:

1. The first block says *Read Sensor*. It reads from pin A0, and sends the value (0-100) over the wire.
1. The second block says *Fade*. It reads a value flowing over the wire, and then sets the fade level of an LED on a pin. Here, we've selected pin 3.

That's it. We have a program that makes an LED brighter when a sensor is active, and lower when it is dormant. Because the data flows from one block to the next, we don't call these programs, but **flows**. 

## Getting Flow

Flow is available for 
[Mac](http://goo.gl/HNalJ), 
[Windows](https://github.com/craftofelectronics/flow), and
 [Linux](https://github.com/craftofelectronics/flow). If you have any problems, please join the [users mailing list](http://concurrency.cc/docs/mailinglists.html) at concurrency.cc. If you want to hack code or contribute in other ways, give Matt a shout directly.

Flow is free and open software available under a GPL license.
