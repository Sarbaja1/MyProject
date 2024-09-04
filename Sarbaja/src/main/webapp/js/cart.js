const btnCart=document.querySelector('#cart-icon');
const cart=document.querySelector('.cart');
const btnClose=document.querySelector('#cart-close');

btnCart.addEventListener('click',()=>{
  cart.classList.add('cart-active');
});

btnClose.addEventListener('click',()=>{
  cart.classList.remove('cart-active');
});

document.addEventListener('DOMContentLoaded',loadFood);

function loadFood(){
  loadContent();

}

function loadContent(){
  //Remove Food Items  From Cart
  let btnRemove=document.querySelectorAll('.cart-remove');
  btnRemove.forEach((btn)=>{
    btn.addEventListener('click',removeItem);
  });

  //Product Item Change Event
  let qtyElements=document.querySelectorAll('.cart-quantity');
  qtyElements.forEach((input)=>{
    input.addEventListener('change',changeQty);
  });

  //Product Cart
  
  let cartBtns=document.querySelectorAll('.add-cart');
  cartBtns.forEach((btn)=>{
    btn.addEventListener('click',addCart);
  });

  updateTotal();
}


//Remove Item
function removeItem(){
	if(confirm('Are Your Sure to Remove')){
    let title=this.parentElement.querySelector('.cart-cloth-title').innerHTML;
    itemList=itemList.filter(el=>el.title!=title);
    this.parentElement.remove();
    loadContent();
  }
}

//Change Quantity
function changeQty(){
  if(isNaN(this.value) || this.value<1){
    this.value=1;
  }
  loadContent();
}

let itemList=[];

//Add Cart
function addCart(){
	let food=this.parentElement;
	let title=food.querySelector('.cloth-title').innerHTML;
	let price=food.querySelector('.cloth-price').innerHTML;
	let imgSrc=food.querySelector('.cloth-img').src;
 	//console.log(title,price,imgSrc);
 
 	let newProduct={title,price,imgSrc}

 	//Check Product already Exist in Cart
 	if(itemList.find((el)=>el.title==newProduct.title)){
		 alert("Product Already added in Cart");
		 return;
 	}else{
		 itemList.push(newProduct);
	}
	
	let newProductElement= createCartProduct(title,price,imgSrc);
	let element=document.createElement('div');
	element.innerHTML=newProductElement;
	let cartBasket=document.querySelector('.cart-content');
	cartBasket.append(element);
	loadContent();
	
	
}

function orderBtn(title, price) {
  let xhttp = new XMLHttpRequest();
  xhttp.open("POST", "AddToCartServlet", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
    }
  };
  xhttp.send(`title=${title}&price=${price}`);
}

let checkoutBtn = document.querySelector(".btn-buy");
checkoutBtn.addEventListener("click", function() {
  let title = document.querySelector(".cart-cloth-title").textContent;
  let price = document.querySelector(".cart-price").textContent;
  orderBtn(title, price);
});

function createCartProduct(title,price,imgSrc){

  return `
  <div class="cart-box">
  <img src="${imgSrc}" class="cart-img">
  <div class="detail-box">
    <div class="cart-cloth-title">${title}</div>
    <div class="price-box">
      <div class="cart-price">${price}</div>
       <div class="cart-amt">${price}</div>
   </div>
    <input type="number" value="1" class="cart-quantity">
  </div>
  <ion-icon name="trash" class="cart-remove"></ion-icon>
  </div>
  `;
}

function updateTotal()
{
  const cartItems=document.querySelectorAll('.cart-box');
  const totalValue=document.querySelector('.total-price');

  let total=0;

  cartItems.forEach(product=>{
    let priceElement=product.querySelector('.cloth-price');
    let price=parseFloat(priceElement.innerHTML.replace("Rs.",""));
    let qty=product.querySelector('.cart-quantity').value;
    total+=(price*qty);
    product.querySelector('.cart-amt').innerText="Rs."+(price*qty);

  });

  totalValue.innerText='Rs.'+total;


  // Add Product Count in Cart Icon

  const cartCount=document.querySelector('.cart-count');
  let count=itemList.length;
  cartCount.innerHTML=count;

  if(count==0){
    cartCount.style.display='none';
  }else{
    cartCount.style.display='block';
  }


}