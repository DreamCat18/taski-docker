# TODO: Complete Nginx Gateway Setup

## Completed Tasks
- [x] Created `gateway/nginx.conf` with proxy configuration including `proxy_set_header Host $http_host;`
- [x] Created `gateway/Dockerfile` based on nginx:1.22.1 copying nginx.conf to `/etc/nginx/templates/default.conf.template`
- [x] Updated `docker-compose.yml`:
  - Renamed nginx service to gateway
  - Changed to build from `./gateway/`
  - Updated ports to 8000:80
  - Updated backend volume mount to `/backend_static`
  - Updated gateway volume mount to `/staticfiles`
- [x] Updated `backend/settings.py`:
  - Changed STATIC_ROOT to `BASE_DIR / 'collected_static'`
  - Added 'localhost' and '127.0.0.1' to ALLOWED_HOSTS

## Remaining Tasks
- [ ] Start containers: Run `docker compose up --build` (this will build and start all services)
- [ ] Collect Django static files: Run `docker compose exec backend python manage.py collectstatic --noinput` (completed - 160 files processed)
- [ ] Copy collected static files to shared volume: Run `docker compose exec backend cp -r /app/collected_static/. /backend_static/static/`
- [ ] Verify frontend static files are copied by frontend container command
- [ ] Test the setup by accessing http://localhost:8000/admin/ and http://localhost:8000/
