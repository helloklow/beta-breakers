class Comment {
    constructor(comment) {
        this.id = comment.id
        this.content = comment.content
        this.rating = comment.rating
        this.user_id = comment.user_id
        this.roote_id = comment.roote_id
        this.created_at = comment.created_at
}

renderComment() {
    return `<div class="comments"><span class="user">${this.user_id}</span> <span class="date">${this.created_at.slice(5, 10).replace("-", "/")}</span><br><br><span class="content">${this.content}</span></div><br>`
    }
}
