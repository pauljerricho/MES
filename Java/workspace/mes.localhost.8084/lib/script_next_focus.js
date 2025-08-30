function script_next_focus(name, len, next) {
	if (name.value.length == len) {
		next.focus();
	}
}