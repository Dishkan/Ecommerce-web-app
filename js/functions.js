function changeDelivery(select) {
	if (select.value == "") return;
	if (select.value == "0") document.getElementById("address").style.display = "table-row";
	else document.getElementById("address").style.display = "none";
}