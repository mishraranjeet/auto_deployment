echo Starting Gunicorn.
exec gunicorn auto_deployment.wsgi:application \
    --bind 0.0.0.0:8000 \
    --timeout 300 \
    --workers 3