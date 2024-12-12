#!/bin/bash

# Make names swadge friendly
mv "./midis/Carrie Wood -Swadge-Ocean-City-1989-SwadgeHero.mid" "./midis/sh_ocean.mid"
mv "./midis/Tuck - ChowaRaceFinal with note map.mid" "./midis/sh_crace.mid"
mv "./midis/JnWake - Wake Man Stage.mid" "./midis/sh_wakeman.mid"
mv "./midis/Mattmattat - The Dance of the Cremulons Final.mid" "./midis/sh_cremulons.mid"
mv "./midis/Meldecision - the devils lullaby updated.mid" "./midis/sh_devils.mid"
mv "./midis/Newmajoe - Chowa Grove.mid" "./midis/sh_cgrove.mid"
mv "./midis/Newmajoe - Hot Dog Credits.mid" "./midis/sh_credits.mid"
mv "./midis/Newmajoe - Pango.mid" "./midis/sh_pango.mid"
mv "./midis/Rampey - Pain Final With Beatmap.mid" "./midis/sh_pain.mid"
mv "./midis/Rampey - Revenge BeatmapFix.mid" "./midis/sh_revenge.mid"
mv "./midis/TheManPF - let it bleed notemap_16.mid" "./midis/sh_bleed.mid"

# Chart everything
source .venv/bin/activate
python chartAll.py
deactivate

# Unzip charts
find ~/Downloads/ -iname "*.zip" | xargs -I{} unzip -d ~/Downloads/ -o "{}"
find ~/Downloads/ -iname "*.zip" -delete

# move charts to assets
mv ~/Downloads/*.chart ~/git/Super-2024-Swadge-FW/assets/swadgeHero/songs/

# copy midi to assets
cp midis/*.mid ~/git/Super-2024-Swadge-FW/assets/swadgeHero/songs/
