function transfer --description 'Transfer file to transfer.sh'
	curl --upload-file $argv https://transfer.sh/(basename $argv);
end