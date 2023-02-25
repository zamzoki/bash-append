while getopts 't:f:h' OPTION; do
  case "$OPTION" in
    t)
      TEXT="$OPTARG"
      ;;
    f)
      FILE_PATH="$OPTARG"
      ;;
    h)
      echo "-t      text to append"
      echo "-f      file path"
      exit 0
      ;;
    *)
      echo "Invalid flag provided." >&2
      exit 1
      ;;
  esac
done

echo $TEXT >> $FILE_PATH
