cd "/cygdrive/c/Go Server/artifacts/pipelines"

/bin/find "/cygdrive/c/Go Server/artifacts/pipelines"/* -maxdepth 0 -type d | while read fname; do
	/bin/find "$fname"/* -maxdepth 0 -type d -printf "%Ts\t%p\n" | /bin/sort -n | cut -f 2 | head -n -5 | while read fname2; do
		echo "deleting: $fname2"
	  rm -r "$fname2"
	done
done

cd "/cygdrive/c/Go Server/artifacts/cache/artifacts/pipelines"

/bin/find "/cygdrive/c/Go Server/artifacts/pipelines"/* -maxdepth 0 -type d | while read fname; do
	/bin/find "$fname"/* -maxdepth 0 -type d -printf "%Ts\t%p\n" | /bin/sort -n | cut -f 2 | head -n -5 | while read fname2; do
		echo "deleting: $fname2"
	  rm -r "$fname2"
	done
done
