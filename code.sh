#bash

REPO_URL="https://github.com/SGH-DON/wuhu.git"
DIR_NAME=$(basename "$REPO_URL" .git)

if [ ! -d "$DIR_NAME" ]; then
   echo "Cloning repository..."
   git clone "$REPO_URL"
else
  echo "Repository already exists. Pulling latest changes..."
  cd "$DIR_NAME" && git pull && cd ..
fi

cd "$DIR_NAME" || exit

echo "Launching spyder...."
spyder -p "."
