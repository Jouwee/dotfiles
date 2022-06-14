#!/bin/sh

# Nord theme
LOCAL=/var/tmp/nord-addon.xpi
wget https://addons.mozilla.org/firefox/downloads/file/3849722/nord_firefox-2.41.xpi -O $LOCAL
firefox $LOCAL
#rm $LOCAL
