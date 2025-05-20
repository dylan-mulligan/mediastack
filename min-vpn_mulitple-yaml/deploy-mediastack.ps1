# deploy-mediastack.ps1
# Single-click deployment for modular MediaStack MVP (Jellyfin, Jellyseerr, Sonarr, Radarr, NZBGet, qBittorrent, Jackett, SWAG)

$envFile = "./docker-compose.env"

# Deploy core media stack containers

docker-compose -f docker-compose-jellyfin.yaml --env-file $envFile up -d

docker-compose -f docker-compose-jellyseerr.yaml --env-file $envFile up -d

docker-compose -f docker-compose-sonarr.yaml --env-file $envFile up -d

docker-compose -f docker-compose-radarr.yaml --env-file $envFile up -d

docker-compose -f docker-compose-nzbget.yaml --env-file $envFile up -d

docker-compose -f docker-compose-qbittorrent.yaml --env-file $envFile up -d

docker-compose -f docker-compose-jackett.yaml --env-file $envFile up -d

docker-compose -f docker-compose-swag.yaml --env-file $envFile up -d

Write-Host "All selected MediaStack containers have been deployed."
