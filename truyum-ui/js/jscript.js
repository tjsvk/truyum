function getrow(rowNumber){
	allStudents = document.getElementById("students"); //get whole table
	student = allStudents.rows[rowNumber-1];	//get selected row (all cells)
	name = student.cells[1].innerText;	// 0->id, 1->name, 2->avg
	alert(name);
}


function clearfunc(){

}

function editfunc(){

}