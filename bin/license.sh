#!/bin/bash

LICENSE="LICENSE"
DIR="inst/www"

function header() {
    dashes=$(printf "%0.1s" "-"{1..80})
    printf "%s " $1 >> $LICENSE
    printf "%*.*s" 0 $((80 - 1 - ${#1})) "$dashes" >> $LICENSE
    printf "\n\n" >> $LICENSE
}

function license() {
    dest="${DIR}/$2/LICENSE"
    curl --silent $1 > $dest
    printf "[%s]\n\n" $1 >> $LICENSE
    cat $dest >> $LICENSE
    printf "\n\n" >> $LICENSE
}

#
# License intro
#
cat << EOF > $LICENSE
The yonder package as a whole is distributed under GPL-3 (GNU GENERAL PUBLIC
LICENSE version 3).

The yonder package includes other open source software components. The following
is a list of these components (full copies of the components' license agreements
are included below):

* Bootstrap, https://github.com/twbs/bootstrap
* FileSaver.js, https://github.com/eligrey/FileSaver.js
* flatpickr, https://github.com/flatpickr/flatpickr
* ion.rangeSlider, https://github.com/IonDen/ion.rangeSlider
* jQuery, https://github.com/jquery/jquery
* popper.js, https://github.com/FezVrasta/popper.js
* Velocity.js, https://github.com/julianshapiro/velocity

EOF

#
# Bootstrap
#
header "Bootstrap"

license "https://raw.githubusercontent.com/twbs/bootstrap/v4-dev/LICENSE" \
        "bootstrap"

#
# FileSaver.js
#
header "FileSaver.js"

license "https://raw.githubusercontent.com/eligrey/FileSaver.js/master/LICENSE.md" \
        "file-saver"

#
# flatpickr
#
header "flatpickr"

license "https://raw.githubusercontent.com/flatpickr/flatpickr/master/LICENSE.md" \
        "flatpickr"

#
# ion.rangeSlider
#
header "ion.rangeSlider"

license "https://raw.githubusercontent.com/IonDen/ion.rangeSlider/master/License.md" \
        "ion-rangeslider"

#
# jQuery
#
header "jQuery"

license "https://raw.githubusercontent.com/jquery/jquery/master/LICENSE.txt" \
        "jquery"

#
# popper.js
#
header "popper.js"

license "https://raw.githubusercontent.com/FezVrasta/popper.js/master/LICENSE.md" \
        "popper"

#
# velocity.js
#
header "Velocity.js"

license "https://raw.githubusercontent.com/julianshapiro/velocity/master/LICENSE.md" \
        "velocity"

#
# yonder
#
header "yonder"

license "https://cran.r-project.org/web/licenses/GPL-3" \
        "yonder"
