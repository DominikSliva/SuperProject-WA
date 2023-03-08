


class Table {

    constructor(tableElement) {
        this.tableElement = tableElement;
        this.refresh();
        this.selectedIds = [];
    }

    refresh() {
        var table = this;
        var thisobj = this;
        $.ajax({
            url: "Table/tableApi.php",    //the page containing php script
            type: "post",    //request type,
            dataType: 'json',
            data: { Action: tableAction },
            success: function (result) {
                table.tableElement.innerHTML = table.generateTheadHTML(result.headers) + table.generateTbodyHTML(result.rows);
                
                var rows = document.getElementsByClassName("table-content");
                for (let i = 0; i < rows.length; i++) {
                    const row = rows[i];
                    row.addEventListener('click', (e) => {
                        if(e.target.tagName == "TD"){
                            var id = e.target.parentElement.getAttribute("row-id");
                        }else if(e.target.tagName == "INPUT"){
                            var rowID = e.target.parentElement.parentElement.getAttribute("row-id");
                            if (e.target.checked){
                                thisobj.selectedIds.push(rowID);
                            }else{
                                thisobj.selectedIds.splice(thisobj.selectedIds.indexOf(rowID), 1);

                            }
                            return;
                        }else{
                            var id = e.target.getAttribute("row-id");
                        }

                        window.location.href = "./Table/firmDetail.php?id="+id;

                    })
                }

                addHide();
                loadColumns();

            },
            error: function (error) {
                console.log(error);
            }
        });

    }

    checkAll() {
        var checkboxes = document.getElementsByClassName("child-checks");
        var master = document.getElementById("masterCheck");
        this.selectedIds = []
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = master.checked;

            if (master.checked){
                var rowID = checkboxes[i].parentElement.parentElement.getAttribute("row-id")
                this.selectedIds.push(rowID)
            }
        }
    }

    generateTheadHTML(headers) {


        var toReturn = "<thead class=\"text-primary\"><tr><th scope=\"col\"><input class=\"form-check-input\" type=\"checkbox\" id=\"masterCheck\" onchange=\"t.checkAll()\"></th>"
        for (let i = 1; i < headers.length; i++) {
            const title = headers[i];
            toReturn += "<th draggable=\"true\" ondragstart=\"dragColumn(event)\" ondragover=\"allowDrop(event)\" ondrop=\"dropColumn(event)\" scope=\"col\"><p ondragover=\"allowDrop(event)\" ondrop=\"dropColumn(event)\">" + title + "</p><button ondragover=\"allowDrop(event)\" ondrop=\"dropColumn(event)\" class=\'column-hide\'>Skrýt</button></th>";

        }
        return toReturn + "</tr></thead>";
    }

    generateRowHTML(row) {
        const keys = Object.keys(row.columns);
        var id = row.columns[keys[0]];
        var toReturn = "<tr row-id=\"" + id + "\" class=\"table-content\"><th scope=\"row\"><input class=\"form-check-input child-checks\" type=\"checkbox\" id=\"gridCheck\" ></th></th>";
        for (let i = 1; i < keys.length; i++) {
            const key = keys[i];
            toReturn += "<td>" + row.columns[key] + "</td>";
        }
        

        return toReturn + "</tr>";
    }

    generateTbodyHTML(rows) {
        var toReturn = "<tbody>";
        for (let i = 0; i < rows.length; i++) {
            const row = rows[i];
            toReturn += this.generateRowHTML(row);
        }

        return toReturn + "</tbody>";
    }



}

t = new Table(document.getElementById("MainTable"));

function checkAll() {
    var checkboxes = document.getElementsByClassName("child-checks");
    var master = document.getElementById("masterCheck");
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = master.checked;
    }
  }

      var draggedColumn;
  function loadColumns(){
      var columnOrder = JSON.parse(localStorage.getItem('columnOrder'));
      if (columnOrder) {
          for (var i = 0; i < columnOrder.length; i++) {
              moveColumn(columnOrder[i].from, columnOrder[i].to)
          }
      }
  }
function dragColumn(event) {
    draggedColumn = event.target;
}

function allowDrop(event) {
    event.preventDefault();
}

function dropColumn(event) {
    event.preventDefault();
    if (event.target.tagName === 'TH') {
        column = event.target;
    }
    if (event.target.tagName === 'P' || event.target.tagName === 'BUTTON') {
        column = event.target.parentElement;
    }

    if (event.target.tagName === 'TH') {
        var fromIndex = draggedColumn.cellIndex;
        var toIndex = column.cellIndex;
        moveColumn(fromIndex, toIndex);
        if (localStorage.getItem('columnOrder') === null){
            var order = [];
        }else{
            var order = JSON.parse(localStorage.getItem('columnOrder'));
        }



        order.push({from: fromIndex, to: toIndex})
        localStorage.setItem('columnOrder', JSON.stringify(order));
    }
}

function moveColumn(fromIndex, toIndex){
      if (fromIndex === toIndex){
          return;
      }

    var rows = document.querySelectorAll('table tr');

    for (var i = 0; i < rows.length; i++) {
        var cells = rows[i].cells;
        var fromCell = cells[fromIndex];
        var toCell = cells[toIndex];
        var clonedFromCell = fromCell.cloneNode(true);
        var clonedToCell = toCell.cloneNode(true);

        rows[i].replaceChild(clonedFromCell, toCell);
        rows[i].replaceChild(clonedToCell, fromCell);


    }
    addHide();

}

function addHide(){
    var columnHider = document.getElementsByClassName("column-hide");
    for (let j = 0; j < columnHider.length; j++) {
        columnHider[j].addEventListener('click', (event) => {
            hideColumn(event.target.parentElement.cellIndex);
        })
    }
}

function hideColumn(index){
    var rows = document.querySelectorAll('table tr');
    for (var i = 0; i < rows.length; i++) {
        var cells = rows[i].cells;
        cells[index].remove();
    }
}

function multiEdit(){
      if (t.selectedIds.length < 1){
          return
      }

    idsString = "";
    for (let i = 0; i < t.selectedIds.length; i++) {
        idsString += t.selectedIds[i] + ",";
    }
    idsString = idsString.substring(0, idsString.length - 1);
    window.location.href = "./Table/addFirmForm.php?id="+idsString;
}

document.getElementById("edit-btn").addEventListener('click', multiEdit);