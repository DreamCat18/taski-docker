# TODO for Taski Docker Setup

- [x] Create docker-compose.yml with services: frontend, backend, nginx, postgres
- [x] Create nginx.conf for routing and static serving
- [x] Modify frontend/Dockerfile to build static and copy to volume, then exit
- [x] Modify backend/Dockerfile to include entrypoint script
- [x] Create entrypoint.sh for backend to run migrations and collectstatic
- [x] Update backend/settings.py to use DATABASE_URL from environment
- [ ] Test the multi-container setup
