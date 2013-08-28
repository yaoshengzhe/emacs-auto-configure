#! /bin/bash

cp -rf .emacs.d ~
cp -rf .templates ~
cp -rf .emacs ~

mkdir bin > /dev/null
echo -e '#! /bin/bash\nexec emacsclient --alternate-editor="" -t -a -c "$@"' > bin/e
echo -e '#! /bin/bash\nemacsclient -e "(kill-emacs)"' > bin/ekill
echo -e '#! /bin/bash\nemacs --daemon' > bin/estart
echo -e '#! /bin/bash\nekill\nestart' > bin/erestart

chmod +x bin/e
chmod +x bin/estart
chmod +x bin/erestart
chmod +x bin/ekill

mv bin/* /usr/local/bin
rm -rf bin
