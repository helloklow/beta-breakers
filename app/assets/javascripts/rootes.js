function rooteButton() {
    document.querySelector('.view-user-rootes').addEventListener("click", function(e) {
        e.preventDefault
        reqRootes()
    }, {once, true})
}

function reqRootes() {
    fetch('http://localhost:3000/rootes.json')
        .then((resp) => resp.json())
        .then((data) => {
            let rootesData = data
            setRootes(rootesData)
        })
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
