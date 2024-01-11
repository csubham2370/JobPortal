echo " BUILD START"
python3.11.5 pip install --upgrade pip
python3.11.5 -m pip install -r requirements.txt
echo "Make Migration..."
python3.11.5 manage.py makemigrations --noinput
python3.11.5 manage.py migrate --noinput
python3.11.5 manage.py collectstatic --noinput --clear
echo " BUILD END"