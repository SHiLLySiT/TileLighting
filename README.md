TileLighting
=============
Dynamic tile-lighting system for FlashPunk.

* Demo can be found here: http://pixelsquidgames.net/projects/tilelighting/tilelighting_demo.html
* The demo uses my own branch of FlashPunk: https://github.com/SHiLLySiT/FlashPunk
* NOTE: my demo and version of FlashPunk require Flash 11.2+

Features
=============
* Light position, size, brightness, and falloff
* Custom light tiles
* Additive lights
* Enable/disable lights without removing them
* Only renders visible lights/updates visible screen
* Auto-update or manual control

Changelog
=============
1/09/2014
- Updated gitignore and committed flashpunk lib and project file (dont know why I didnt do this in the first place!)
- Updated demo; placing light now places copy of the light attached to the mouse

12/08/2012
- Performance fix in the checkblock function. Large lights and many lights shouldn't cause such a huge slowdown anymore.

12/05/2012
- Initial release.
