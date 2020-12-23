# Intro

ffmpeg container

Build
```sh
docker build -t ch4nd4n/ffmpeg .
```

Use

```sh
docker run -v ~/Downloads:/app/Downloads -it --rm --name ffmpeg ch4nd4n/ffmpeg:latest sh
```

Or

```sh
docker run -v /host/path:/app/temp -it --rm --name ffmpeg ch4nd4n/ffmpeg:latest ffprobe ./temp/temp.webm
```

Convert file

```sh
docker run -v /host/path:/app/temp -it --rm --name ffmpeg ch4nd4n/ffmpeg:latest ffmpeg -i source.webm -vcodec copy -acodec copy out.webm
```