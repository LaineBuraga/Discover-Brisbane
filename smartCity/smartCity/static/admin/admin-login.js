function submit() {
  return true;
}

document.getElementById("submit").addEventListener("click", function(e) {
  e.preventDefault();
	if (submit()) {
		window.location.replace("admin.html");
		this.submit;
	}
});
