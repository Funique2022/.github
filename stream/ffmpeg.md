# FFmpeg Guide

FFmpeg is handling the video audio encoding and decoding processes\
Depend on the version, some have feature we do not have\
And currently require feature must use custom build one, So that's why we have this fork

| ID  | Name                                                         | Docuemnt                                             |
| --- | ------------------------------------------------------------ | ---------------------------------------------------- |
| 1.  | [Funique FFmpeg](https://github.com/Funique2022/tool_ffmpeg) | [Quick Start](./ffmpeg/overview.md)                  |
| 2.  | [Official FFmpeg](https://ffmpeg.org/)                       | [Quick Start](https://ffmpeg.org/documentation.html) |

We still use official ffmpeg alot, that's why i put the link above

| Feature       | Offical FFmpeg | Custom Build FFmpeg |
| ------------- | -------------- | ------------------- |
| H.264 Encoder | ✔️              | ✔️                   |
| Hevc Encoder  | ✔️              | ✔️                   |
| H.264 RTMP    | ❌              | ✔️                   |
| Hevc RTMP     | ❌              | ✔️                   |
| HLS           | ✔️              | ❌                   |

As you can see the table above, this is pretty messy.\
In the future we will have to modify a version that can support all of them\
Or use alternative solution to prevent this maintaining issue.