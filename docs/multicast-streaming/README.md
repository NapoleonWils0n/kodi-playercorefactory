# ffmpeg multicast streaming

copy the multicast-stream.strm file to a share you can access from another machine running kodi

select stream from the play using menu

ffmpeg will create a multicast stream from the video and send the stream to udp://@239.253.253.4:1234

manually kill ffmpeg to stop the stream

find the ffmpeg process id

	pgrep ffmpeg

kill the process

	kill PID

or you can use ps aux | grep ffmpeg

	ps aux | grep ffmpeg

kill the process

	kill PID

You can also use the rip-stream.sh script and pass in the location of a text file with a video url from kodi
which you can get by pressing y on the keyboard while a video is playing in kodi,
and selecting save url from the play using menu