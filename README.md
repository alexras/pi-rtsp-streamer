# pi-rtsp-streamer

Quick and dirty way to create a reasonably high-framerate, low-latency MJPEG stream from a Raspberry Pi.

Adapted from a number of blog posts, most notably [Chris Carey's post](https://chriscarey.com/blog/2017/04/30/achieving-high-frame-rate-with-a-raspberry-pi-camera-system/).

## Installation

Clone [mjpg-streamer](https://github.com/jacksonliam/mjpg-streamer) into `~pi` and install it.

Tweak values of `WIDTH`, `HEIGHT` and `FPS` to your liking.

Put `stream-rtsp.sh` in `~pi`, `stream-rtsp.service` into `/etc/systemd/system/`, and run

```
sudo systemctl enable stream-rtsp.service
```

to configure the service to start at boot.

## Usage

Connect to `http://<host>:8080/?action=stream` in a browser or with VLC. Note that delay will vary depending on which client you're using, so if you're seeing a lot of lag, try another client.
