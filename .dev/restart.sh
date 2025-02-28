echo "\n\n\n\n------------------------------------\nRunning: sudo git checkout main\n------------------------------------\n\n\n\n"
sudo git checkout main

echo "\n\n\n\n------------------------------------\nRunning: sudo git pull\n------------------------------------\n\n\n\n"
sudo git pull

echo "\n\n\n\n------------------------------------\nRunning: cd /projects/samim_backend\n------------------------------------\n\n\n\n"
cd /projects/samim_backend

echo "\n\n\n\n------------------------------------\nRunnin: sudo pm2 delete "samim_backend"\n------------------------------------\n\n\n\n"
sudo pm2 delete "samim_backend"

echo "\n\n\n\n------------------------------------\nRunnin: sudo pm2 save --force\n------------------------------------\n\n\n\n"
sudo pm2 save --force

echo "\n\n\n\n------------------------------------\nRunning: sudo npm install --frozen-lockfile\n------------------------------------\n\n\n\n"
sudo npm install --frozen-lockfile

echo "\n\n\n\n------------------------------------\nRunning: sudo npm run db:migrate\n------------------------------------\n\n\n\n"
sudo npm run db:migrate

echo "\n\n\n\n------------------------------------\nRunning: sudo npm run db:deploy\n------------------------------------\n\n\n\n"
sudo npm run db:deploy

echo "\n\n\n\n------------------------------------\nRunning: sudo pm2 start "npm start" --name "samim_backend"\n------------------------------------\n\n\n\n"
sudo pm2 start "npm start" --name "samim_backend"

echo "\n\n\n\n------------------------------------\nRunning: sudo pm2 save\n------------------------------------\n\n\n\n"
sudo pm2 save

echo "\n\n\n\n------------------------------------\nRunning: sudo pm2 startup\n------------------------------------\n\n\n\n"
sudo pm2 startup