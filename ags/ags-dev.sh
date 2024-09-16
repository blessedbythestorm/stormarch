#!/bin/fish

set WORKDIR /home/stormblessed/.config/ags


function _ags

  echo "checking for running instance..."
  if pgrep -x ags > /dev/null 
    echo "killing old instance..."
    pkill -x ags
  end

  echo "starting new instance..."
  ags &
end

_ags

inotifywait --quiet --monitor --event create,modify,delete --recursive $WORKDIR | 
  while read -l DIRECTORY EVENT FILE
    # Get the file extension
    set file_extension (string split '.' -- $FILE)[-1]
    
    switch $file_extension
      case "ts"
        echo "reload TS..."
        _ags
      case "scss"
        echo "reload SCSS..."
        sass "$WORKDIR/scss/index.scss" "$WORKDIR/style.css"
        ags -r "App.resetCss(); App.applyCss('$WORKDIR/style.css');"
    end
  end
