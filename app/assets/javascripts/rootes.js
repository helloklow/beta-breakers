function rooteButton(){
    document.querySelector('.user-rootes').addEventListener("click", function(e){
        e.preventDefault
        requestRootes()
    }, {once: true})
} 

function requestRootes(){
    fetch('http://localhost:3000/rootes.json')
        .then((resp) => resp.json())
        .then((data) => {
            let rootesData = data
            setRootes(rootessData)
        })
}

function setRootes(rootesData) {
    let mainArea = document.querySelector('div.main')
    let newMain = document.createElement('div')
    let rootesList = document.createElement('ul')

    newMain.innerHTML = '<h1> Your Beta </h1>'

    rootesData.forEach(function(roote){
        let b = new Roote(roote)
        rootesList.innerHTML += `<li id=${b.id}><button onclick=rooteDetails()>${b.name}</button></li>`
    })  

    newMain.appendChild(rootesList)
    
    newMain.innerHTML += `<button id="newUnitForm" onclick="addNewUnitFormListener()"> Add New Unit </button>` 

    mainArea.innerHTML = newMain.innerHTML
}

class Roote {
    constructor(roote) {
        this.id = roote.id
        this.name = roote.name
        this.category = roote.category
        this.location = roote.location
        this.difficulty = roote.difficulty
        this.conent = roote.content
        this.author_id = roote.author_id
        this.comments = roote.comments
    }
}
