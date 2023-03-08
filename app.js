function checkAll() {
  var checkboxes = document.getElementsByClassName("child-checks");
  var master = document.getElementById("masterCheck");
  for (var i = 0; i < checkboxes.length; i++) {
      checkboxes[i].checked = master.checked;
  }
}
