echo " BUILD START"
python3.11 pip install --upgrade pip
python3.11 -m pip install -r requirements.txt
echo "Make Migration..."
python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput
python3.11 manage.py collectstatic --noinput --clear
echo " BUILD END"