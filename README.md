# MIDI Surf

> [!NOTE]
> **About this fork:** This is [@patcon](https://github.com/patcon)'s fork of
> [mochreach/midi-surf](https://github.com/mochreach/midi-surf). It adds
> improved multi-touch support (playing several buttons and faders at once
> — see [upstream #29](https://github.com/mochreach/midi-surf/issues/29)) and
> is auto-deployed from the `main-patcon` branch to
> **https://patcon.github.io/midi-surf/**. The original app lives at
> [midisurf.app](https://midisurf.app). Changes intended for upstream are
> developed on feature branches (e.g. `multitouch`) and merged into
> `main-patcon`.

**A flexible and powerful MIDI controller anywhere you have a browser!**

![sketch1673045999388](https://user-images.githubusercontent.com/8362681/222118318-b104ae65-c6a9-4f98-ac1b-a7cd02effb51.png)

[MIDI Surf](https://midisurf.app) is a browser-based MIDI controller that is
optimised to work on a range of devices, including tablets and smartphones. It
is highly customisable, enabling you to make a controller that is exactly what
you need to make or perform your music at any given moment.

Take a look at [this video](https://youtu.be/c5BpeMxs5ZU) to see it in action.

### Features

Here's a quick rundown of some of the features:

- Install to your device as a progressive web app and use offline!
- Buttons for playing notes, chords and sending CC
- Faders for smoothly changing CC
- Set MIDI parameters automatically by pressing the key or changing the
  parameter on your device!
- Custom isomorphic keyboards with any size and offset you like
- Create scale keyboards or chord banks in seconds
- Store pages and modules to reuse later
- Share presets as a link
- A MIDI event viewer so you can see exactly what MIDI messages your device is sending

As useful as it is just now, this is just the beginning for MIDI Surf, I have
lots of features in the pipeline. Check out my [YouTube
channel](https://www.youtube.com/@mochreach) for development videos, tutorials
and other music technology/programming related content!

### Support the project, but no obligations, it's free to everyone!

Please consider supporting the development of this app if you enjoy using it,
I'd really appreciate it if you did! You can join our community on
[Patreon](https://patreon.com/mochreach) and help guide the direction the app
(and future software from Mo Chreach!) takes, or buy me a coffee/beer/cup of
tea/sausage roll on [Ko-Fi](https://ko-fi.com/mochreach).

### Browser Compatibility

On both desktop and mobile, I'd recommend using an up-to-date version of a
Chromium-based browser to use MIDI Surf, such as Chrome, Edge, Vivaldi, Brave
etc. Currently (as of Jan 2023), Safari and Safari on iOS do not support the
Web Midi API. Take a look on [Can I use](https://caniuse.com/midi) for an
current browser compatibility.

## Presets

Here is a list of presets you can import: https://github.com/patcon/midi-surf/blob/main-patcon/presets.md

## Update History

- 0.5.3 (2024-02-13): Now clears URL query string after importing a controller.
- 0.5.2 (2024-02-07): Fixes bugs related to saving modules and undoing changes.
- 0.5.1 (2024-02-06): Fixes a bug with setting the viewport.
- 0.5.0 (2024-02-06): Adds SysEx msgs, deleting items in rows/columns, wrapping containers in modules.
- 0.4.0 (2024-02-03): Theory Craft - Adds chords keyboard and scale keyboard. Adds sized columns and rows.
- 0.3.4 (2023-03-05): Fixes a bug with commands.
- 0.3.3 (2023-02-28): Fixes scaling issues.
- 0.3.2 (2023-02-11): Fixes fader bug with min max value not being used and web midi error reporting.
- 0.3.1 (2023-02-06): Fixes fader max value bug and midi indexing.
- 0.3.0 (2023-01-30): No Wasted Effort - Adds ways to save and export presets.
- 0.2.0 (2023-01-22): The Hands On Update - New controller types.
