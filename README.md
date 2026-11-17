# Medkits Assorted Lite

A Barotrauma mod: medkits and medical bags that accept medical items only.
The **Lite** version of the full **Medkits Assorted** mod ([Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3841432149) · [GitHub](https://github.com/DawidZZ/medkits-assorted)) — pure XML, **no Lua (LuaCs) and no overrides**
of game files. Works with the vanilla game and with Neurotrauma / Neurotrauma CS (their medical items fit in the kits).

## AI use

> **AI use disclaimer:**
> The item sprites were generated with AI, some with minor manual edits.
> The infographics and the mod's cover are rendered by a script written by an AI coding agent.
> The mod's XML was written with the help of an AI coding agent, and I reviewed all of it myself (I'm a software
> developer by profession).
> Design, testing and balancing were done by me.

> **Author's note:** I know AI is controversial, and I'm not a fan of AI "art" myself. I only decided to publish the mod
> because the final result doesn't have that "AI slop" feel, especially at Barotrauma's item scale (with the possible
> exception of the First Responder Vest, whose front still looks like slop). That being said, as a programmer I can
> vouch for AI code: coding agents have improved significantly over the past *few* years, and in many cases they write
> higher-quality code than many programmers do.

## Items

| Item | Slots | Carried |
|---|---|---|
| IFAK | 4 | inventory slot, one hand, backpack, belt |
| Medkit | 9 | inventory slot, one hand |
| Large Medical Bag | 12 | inventory slot, one hand |
| Medical Backpack | 12, +10 Medical skill | bag slot |
| Trauma Bag | 20, breaks down in water | both hands |
| Waterproof Trauma Bag | 16 | both hands |
| First Responder Tactical Vest | 6 + 2 for bandages, light armor | outer clothing slot |

## What's missing compared to the full version

Everything that required Lua or overriding game files has simply been removed, with no replacements:

- the First Responder and Always Prepared **talents** (they overrode the medic talent tree) — the Large Medical Bag,
  Medical Backpack and vest can be fabricated by anyone, no recipe needed,
- the **surgical kits** (Large and Basic Surgical Kit) — hiding them without Neurotrauma, filling them with tools
  and the buttons in the NTCS health menu all relied on Lua,
- **medkits in uniform pockets** and opening them from there (Lua).

Thanks to this, Lite doesn't conflict with mods that change the medic talent tree (e.g. NTCS Grafting) and doesn't need LuaCs.

## Full version vs. Lite

- Item identifiers (`mka_*`) are the same, so saves keep working when switching in either direction.
  Going from full to Lite only removes the surgical kits.
- **Don't enable both at once** — they define the same items.
- Full version: [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3841432149) · [GitHub](https://github.com/DawidZZ/medkits-assorted)
- The images are copies from the full version (the sources and the scripts that generate them live there). Make item
  changes in the full version first, then port them here.

## Development

```bash
scripts/link-localmods.sh   # symlinks the mod into <game>/LocalMods/
```

Then in game: Mods → enable "Medkits Assorted Lite".

`workshop/` holds the Steam Workshop description (`description.bbcode`, Steam BBCode) and the item infographics it
embeds (`images/`, copied from `medkits-assorted-infographics/output/medkits-assorted-lite/en/`; recopy after
rerunning it).
The description links the images through `raw.githubusercontent.com` pinned to a commit hash, because Steam caches
images by URL: after pushing new images, replace the hash in `description.bbcode` with the pushed commit
(`git rev-parse origin/main`).

## License

Copyright (C) 2026 DawidZZ

This mod is free software: you can redistribute it and/or modify it under the terms of the
GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

It is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the [LICENSE](LICENSE) file for the full text of the
GNU General Public License v3.0.
