@echo off
::This batch script will search google for the 10 most popular iptv-pastes on pastebin containing a search-term
::i.e. FeedHunt "Discovery Channel" will return a set of Title-and-Link combo's for the Discovery Channel
::Xidel is a powerful tool that can extract data from xml/json

xidel -q https://www.google.com ^
      -f "form(//form, {'q': '%~1 intext:#EXTINF site:pastebin.com', 'num': '10'})" ^
      -f "for $i in //a/extract(@href, 'url[?]q=([^&]+)&', 1)[.!=''] return replace($i,'.com/','.com/raw.php?i=')" ^
      -e "tokenize($raw,'#')!extract(.,'.*,.*(.*%~1.*)\r\n(.*)',('1','2'),'i')[.!='']"