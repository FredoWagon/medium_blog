import { Controller } from "stimulus";

export default class extends Controller {
    static targets = [ 'searchbarinput', 'article' ];
    connect() {
        this.allCars = document.querySelectorAll('.article_card');
    }


    search(e) {
        e.preventDefault()
        const searchInput = this.searchbarinputTarget.value.toLowerCase()
        this.articleTargets.forEach( (article) => {
            if (article.dataset.title.includes(searchInput)) {
                article.style.display="block"
            } else {
                article.style.display="none"
            }
        })
    }

    change(e) {
        if ( this.searchbarinputTarget.value == "") {
            this.allCars.forEach( (article) => {
                article.style.display="block"
            })
        }

    }

}