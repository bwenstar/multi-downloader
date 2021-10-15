# Info

Personal project to download sections of Youtube videos (youtube-dl) and/or Spotify songs (spotdl).

# Build

    docker build -f Dockerfile -t bta-multi-downloader:1.0 .

# Usage

- Build Docker container
- Run with following commands
- Output file will be in ./output folder

# Commands

Spotify download:

    docker run -it --rm -v `pwd`/output:/output -v `pwd`/scripts:/scripts bta-multi-downloader:1.0 bash -c "cd output; spotdl [link|uri|search]"

e.g. Song URI:

    docker run -it --rm -v `pwd`/output:/output bta-multi-downloader:1.0 bash -c "cd output; spotdl https://open.spotify.com/track/6VNo09sojPBi5mdckQkLbX?si=1a3f95de29964d2d"

Youtube download:

    docker run -it --rm -v `pwd`/output:/output -v `pwd`/scripts:/scripts bta-multi-downloader:1.0 bash -c "cd scripts; ./youtube.sh [url] [start_time] [duration]"

e.g. 10 seconds of a Youtube clip:

    docker run -it --rm -v `pwd`/output:/output -v `pwd`/scripts:/scripts bta-multi-downloader:1.0 bash -c "cd scripts; ./youtube.sh https://www.youtube.com/watch?v=FGBhQbmPwH8 00:00:00 00:00:10"

