class Table {

    constructor(tableElement) {
        this.tableElement = tableElement;
        this.refresh();
    }

    refresh() {
        var table = this;
        $.ajax({
            url: "Table/tableApi.php",    //the page containing php script
            type: "post",    //request type,
            dataType: 'json',
            data: { Action: "getData" },
            success: function (result) {
                table.tableElement.innerHTML = table.generateTheadHTML(result.headers) + table.generateTbodyHTML(result.rows);
                console.log(result);
                

            },
            error: function (error) {
                console.log(error);
            }
        });
    }



    generateTheadHTML(headers) {
        var toReturn = "<thead><tr>"
        for (let i = 0; i < headers.length; i++) {
            const title = headers[i];
            toReturn += "<th>" + title + "</th>";

        }
        return toReturn + "</tr></thead>";
    }

    generateRowHTML(row) {
        const keys = Object.keys(row.columns);

        var toReturn = "<tr>";
        keys.forEach((key, index) => {
             toReturn += "<td>" + row.columns[key] + "</td>";
        });

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