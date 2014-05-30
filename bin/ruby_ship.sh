OS="unknown"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	OS="linux-gnu"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OS="darwin"
elif [[ "$OSTYPE" == "cygwin" ]]; then
	OS="win"
elif [[ "$OSTYPE" == "win32" ]]; then
	OS="win"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
	OS="freebsd"
else
	echo "OS not compatible"
	exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/${OS}_ruby.sh "$@"