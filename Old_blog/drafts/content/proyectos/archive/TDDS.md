---
title: TDDS
description: A software for Technical Drawing (Diedric system)
---
# TDDS

TDDS is ***technical drawing*** software but I guess is better to say that
it is made for learn, when I was in my first university course I had a
lot of problems with it, the problem was I did not understand nothing
about what were doing, then I had the idea of a software to simplify
the diedric system.

It's true, there are software for CAD and they let you drawing this
figures easily but they ask for a license (almost are no free software
or open source) and the worst part is you have to learn about how to
draw and understand what you are doing, in my idea of software you
dont have to know nothing, just have a minimal knowledge about what
you want to draw, a line or a point in 3D and the program will make
for you the 2D part, it let you know how the space moves in 2D planes.

I didn get it the first time, but for engineers the spacial vision
it's so important, so we need to learn this things altought maybe we
will not use never.

## About the project

### 16/02/2021
I started with python, it is easy, "clean" and there are a lot of
documentation about GUI's (by some reason exists people that don't
love console software???).

Luckily I found a [gist with a GUI made with matplotlib and PyQt5][link1], so I
made fork and started to work, I wanted something with commands that
is the reason why I thought use a console but in PyQT there is a
textbox, it do the same work, I added some commands (point for draw
and delpoint for delete it), some functions for draw and this is the
result.

{{<images projects "/images/TDDS_progress1.png" >}}

I don't like the 3D visualization but I hope change it the next time
to get this or something similar.

{{<images projects "/images/TDDS_wiwt.png" >}}

## Links
{{<github "https://github.com/rhyloo/TDDS">}}

[link1]:https://gist.github.com/holesond/b4f9db4b24eca00ef8b01a96c6e53a03
