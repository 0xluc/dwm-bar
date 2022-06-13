dwm_tasks() {
	printf "%s" "["
	printf "%s" "$(task _zshids | sed -z '$ s/\n$//' | tr '\n' '|')"
	printf "%s\n" "]"
}
