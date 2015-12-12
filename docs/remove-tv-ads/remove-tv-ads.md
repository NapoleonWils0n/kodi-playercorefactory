# remove tv ads

	mplayer infile.mkv -edlout video-edl.edl

press i while the video is playing to set the start trim point,
press i again to set the end trim point

### copy the audio and video streams
	mencoder infile.mkv -edl video-edl.edl -ovc copy -oac copy -o outfile.mkv

### convert the audio stream and copy the video streams
	mencoder infile.mkv -edl video-edl.edl -ovc copy -oac faac -o outfile.mkv

### convert the video to x264 ( same as h264 ) and aac audio
	mencoder infile.mkv -edl video-edl.edl -ovc x264 -oac faac -o outfile.mkv