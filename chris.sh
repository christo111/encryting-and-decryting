echo "enter input file name"
read f
if test -f $f
then
echo "enter output file name"
read f1
if test -f $f1
then
echo "original file contents"
cat $f
tr '[:1-9:]''[:$f+7%10:]'<$f>$f1
echo "encrypted file contents"
cat $f1
tr '[:$f+7%10:]''[:1-9:]'<$f1>$f
echo "decryted file contents"
cat $f
else
echo "invalid file name"
exit
fi
else
echo "invalid file name"
exit
fi
