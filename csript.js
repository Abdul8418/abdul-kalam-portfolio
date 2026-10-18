function showskill(skill){
    const details = document.getElementById("skill-details");

    const skills = {
        sql :{
            title : "SQL",
            description: "I use SQL to query Joine,and analyze data to find useful business insights.",
            points:["Joins","Subqueries","CTEs","Window Funcation","Data Analysis"]
        },
        excel :{
            title : "Advanced Excel",
            description:"I use to Excelto clean data ,perform calculations , and create reports.",
            points : ["XLOOKUP","VLOOKUP","HLOOKUP","Pivot Tables","Data Cleaning","Charts"]
        },
        powerbi:{
            title :"Power Bi",
            description:"I create interactive dashboards to track performance and understand business trends.",
            points : ["Interactive Dasboards", "Dax","Data Visualization"]
        },
        tableau :{
            title : "Tableau",
            description:"I use Tableau to visualize data and communicate insights through dashboards.",
            points : ["Charts","Dashboards","Data Visualization","Filters"]
        },
        datacleaning:{
            title :"Data Cleaning",
            description:"I prepare raw data for analysis by improving its quality and consistency.",
            points:["Remove Duplicates","Handle Missing Values","Data Formatting","Correct Data Types"]
        },
        webdevelopment:{
            title :"Web Development",
            description:"I build responsive web pages using front-end technologies.",
            points:["HTML","CSS","JavaScripts","Responsive Design"]
        }
    };
    const selected = skills[skill];

    if (!selected || !details) return;

    details.innerHTML = `
        <h3>${selected.title}</h3>
        <p>${selected.description || ""}</p>
        <ul>
            ${selected.points.map(point => `<li>${point}</li>`).join("")}
        </ul>
    `;

    details.hidden = false;
    details.scrollIntoView({ behavior: "smooth", block: "nearest" });
}