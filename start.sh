if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TechnoMindz/IMDB_AutoDeleteRobot.git /IMDB_AutoDeleteRobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /IMDB_AutoDeleteRobot
fi
cd /IMDB_AutoDeleteRobot
pip3 install -U -r requirements.txt
echo "Starting Techno Mindz..."
python3 bot.py
