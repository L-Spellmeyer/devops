#!/user/bin/env bash
# Description:
# Author: Levi Spellmeyer
# Date: 4/2/2024

eval "$(ssh-agent -s)"
ssh-add .ssh/ggcp
ssh -i gcp lgspellmey42@tntech.edu
