#! /bin/bash

cp -rf .emacs.d ~
cp -rf .templates ~

mkdir bin
echo -e '#! /bin/bash\nexec emacsclient --alternate-editor="" -t -a -c "$@"' > bin/e
echo -e '#! /bin/bash\nemacsclient -e "(kill-emacs)"' > bin/ekill
echo -e '#! /bin/bash\nekill\nemacs --daemon' > bin/estart

sudo chmod +x bin/e
sudo chmod +x bin/estart
sudo chmod +x bin/ekill

sudo cp bin/* /bin/

