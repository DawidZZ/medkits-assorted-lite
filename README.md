# Medkits Assorted Lite

A Barotrauma mod: medkits and medical bags that accept medical items only.
The **Lite** version of the full [Medkits Assorted](https://github.com/DawidZZ/medkits-assorted) mod — pure XML, **no Lua (LuaCs) and no overrides**
of game files. Works with the vanilla game and with Neurotrauma / Neurotrauma CS (their medical items fit in the kits).

## Items

| Item | Slots | Carried |
|---|---|---|
| IFAK | 4 | inventory slot, one hand, backpack, belt |
| Medkit | 9 | inventory slot, one hand |
| Large Medical Bag | 12 | inventory slot, one hand |
| Medical Backpack | 12, +10 Medical skill | bag slot |
| Trauma Bag | 20, breaks down in water | both hands |
| Waterproof Trauma Bag | 16 | both hands |
| First Responder Tactical Vest | 6 + 2 for bandages | outer clothing slot |

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
- The images are copies from the full version (the sources and the scripts that generate them live there). Make item
  changes in the full version first, then port them here.

## Development

```bash
scripts/link-localmods.sh   # symlinks the mod into <game>/LocalMods/
```

Then in game: Mods → enable "Medkits Assorted Lite".

## License

Licensed under the [GNU General Public License v3.0](LICENSE).
