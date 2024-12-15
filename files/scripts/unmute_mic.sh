while true; do
  amixer -c 2 scontrols | while read -r control; do
    control_name=$(echo "$control" | cut -d"'" -f2);
    amixer -c 2 set "$control_name" 100%
  done
done
