export default class Products {
    constructor() {
        this.data = {
            password: "KickPHP"
        }

        this.rootElem = document.querySelector('.products');
        this.filter = this.rootElem.querySelector('.filter');
        this.items = this.rootElem.querySelector('.items');

        this.nameSearch = this.filter.querySelector('.nameSearch');
    }

    async init(){
        this.nameSearch.addEventListener('input', () => {
            if(this.nameSearch.value.length >= 3 ){
                this.render();
            }

        });

        await this.render();
    }

    async render(){
        const data = await this.getData();

        const row = document.createElement('div');
        row.classList.add('row','g-4');

        for(const item of data){
            const col = document.createElement('div');
            col.classList.add('col-md-6', 'col-lg-4', 'col-xl-3');

            col.innerHTML = `
           <div class="card h-100">
                <img src="images/prodBillede/${item.prodBillede}" class="card-img-top">
                    <div class="card-body">
                       <h5 class="card-title">${item.prodNavn}</h5> 
                       <p class="card-text">${item.prodBeskrivelse}</p>
                       
                    </div>
                    <div class="card-footer">
                            <a href="film.php?prodId=${item.prodId}" class="btn-custom mt-2 btn btn-primary w-100">Gå til film</a>
                       </div>
           </div> 
        `;

            row.appendChild(col);
        }

        this.items.innerHTML = '';
        this.items.appendChild(row);

    }

    async getData(){
        this.data.nameSearch = this.nameSearch.value;

        const response = await fetch('api.php', {
            method: "POST",
            body: JSON.stringify(this.data)
        });
        return await response.json();

    }
}