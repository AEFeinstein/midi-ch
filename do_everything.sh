#!/bin/bash

# Make names swadge friendly
mv "./midis/Carrie Wood -Ocean-City-1989 (fixed bass).mid" "./midis/sh_ocean.mid"
mv "./midis/Tuck - Chowa Race (Final 12 16).mid" "./midis/sh_crace.mid"
mv "./midis/JnWake - Wake Man Stage.mid" "./midis/sh_wakeman.mid"
mv "./midis/Mattmattat - Dance of the Creumlons (USE THIS).mid" "./midis/sh_cremulons.mid"
mv "./midis/Meldecision - The Devil_s Lullaby (FINAL FOR REAL).mid" "./midis/sh_devils.mid"
mv "./midis/Newmajoe - Chowa Grove.mid" "./midis/sh_cgrove.mid"
mv "./midis/Newmajoe - Hot Dog Credits.mid" "./midis/sh_credits.mid"
mv "./midis/Newmajoe - Pango (simplified 12.14).mid" "./midis/sh_pango.mid"
mv "./midis/Rampey - Pain (Final).mid" "./midis/sh_pain.mid"
mv "./midis/Rampey - Revenge (final).mid" "./midis/sh_revenge.mid"
mv "./midis/TheManPF - Let it Bleed (Fixed 12.14).mid" "./midis/sh_bleed.mid"
mv "./midis/Newmajoe - Gunship Swadge credits (fixed 12 27).mid" "./midis/sh_gs_credits.mid"
mv "./midis/Ronin Op F - Starfest Magway.mid" "./midis/sh_starfest.mid"
mv "./midis/Ian Cowell - San Pablo Sunrise.mid" "./midis/sh_sunrise.mid"

# Chart everything
source .venv/bin/activate
python chartAll.py
deactivate

# Unzip charts
find ~/Downloads/ -iname "*.zip" | xargs -I{} unzip -d ~/Downloads/ -o "{}"
find ~/Downloads/ -iname "*.zip" -delete

# move charts to assets
mv ~/Downloads/*.chart /home/adam/git/Super-2024-Swadge-FW/assets/swadgeHero/songs

# copy midi to assets
cp midis/*.mid /home/adam/git/Super-2024-Swadge-FW/assets/swadgeHero/songs
