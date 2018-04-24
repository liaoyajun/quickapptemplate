msg='update'

if [ -n "$1" ]
then
  # msg=$msg$1
  msg=$1
fi

git st
git add .
git commit -m $msg
git push origin master
