# Client Application

Client is typically means the end user, it's often a program or web browser or video player.

These type of client usually have different capability when facing different video stream.

## Some Example

1. web browser cannot play RTMP video stream, it needs to transcode to HLS before use it on the web.

2. Some video player does not support H265 or Live stream update, Or m3u8 metadata support.

3. Multi-channel audio cannot transcode into HLS format.

Above three points are some example we need to consider when we design a pipeline.

## Video Player Support Format

[Avpro Support Format](https://www.renderheads.com/content/docs/AVProVideo/articles/supportedmedia.html)

[VLC Support Format](https://wiki.videolan.org/VLC_Features_Formats/)

[HLS.js](https://github.com/video-dev/hls.js/)

These are the limitation for the video players, So we usually use [PotPlayer 64bit](https://potplayer.daum.net/) to test if our video stream could be play successfully.
