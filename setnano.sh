cd ~

echo "set tabsize 4" > .nanorc
echo "set linenumbers" >> .nanorc
echo "set constantshow" >> .nanorc
echo "" >> .nanorc

if [ "NetBSD" = "$(uname -s)" ] ; then
# NetBSD installs to /usr/pgk/share
	cat /usr/pkg/share/nano/c.nanorc >> .nanorc ;
elif [ "Linux" = "$(uname -s)" ] ; then
# linux installs in /usr/share
	cat /usr/share/nano/c.nanorc >> .nanorc ;
else 
# FreeBSD and OpenBSD install to /usr/local/share
	cat /usr/local/share/nano/c.nanorc >> .nanorc ;
fi
