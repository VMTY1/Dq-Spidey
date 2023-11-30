if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone VMTY1/Dq-Spidey
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dq-Spidey
fi
cd /PETER-PARKER-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
