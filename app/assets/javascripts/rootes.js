document.getElementById("user-rootes").addEventListener("click", function(r) {
    if(r.target && r.target.idName == "user-beta-link") {
        console.log("works")
    }
})

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

renderRootes() {
    return (`<a href="/rootes/${this.id}" data-id="${this.id}" class="show_link"><h1>${this.name}</br></h1></a>`)
}

renderRoote() {
    let rooteComments = this.comments.map(comment => {
        return (`
            <p>${comment.content}</p>
        `)
    }).join('')

    return (`<h2>${this.name}</br>Category: ${this.category}</br>Location: ${this.location}</br>Difficulty: ${this.difficulty}</br>Comments: ${rooteComments}<br></br></h2></a>`)
    }
}

function getRootes() {
    let rootesDiv = document.getElementById('user-rootes');
    fetch('https://localhost:3000/rootes.json')
    .then(resp => resp.json())
    .then(rootes => {
        rootesDiv.innerHTML = '';
        for (let i = 0, len = rootes.length; i < len; ++i) {
            const rooteObj = new Roote(rootes[i]);
            rootesDiv.innerHTML += rooteObj.displayRoote('user_rootes');                  
        }
    })
}

