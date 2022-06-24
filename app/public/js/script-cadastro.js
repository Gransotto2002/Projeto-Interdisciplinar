const uploadImg = document.getElementById("upload-image");

uploadImg.addEventListener("change", handleUploadImage);

function handleUploadImage(event) {
  const files = event.target?.files;

  if (!files?.length) return;

  if (!FileReader) return;

  const fr = new FileReader();

  fr.onload = () => {
    const userImg = document.getElementById("user-img");
    userImg.style.background = `url(${fr.result})`;
    userImg.style.backgroundRepeat = "no-repeat";
    userImg.style.backgroundSize = "contain";
    userImg.style.backgroundPosition = "50% 50%";
  };

  fr.readAsDataURL(files[0]);
}


let select = document.querySelector('#select')
let lista = document.querySelector('#lista-cursos')


if(select.value == 0 || select.value == 5){
  lista.setAttribute('disabled', 'disabled')
}

select.addEventListener('change', () => {
  if(select.value !== 0){
    if(select.value !== '5'){
      lista.removeAttribute('disabled')
    }else{
      lista.setAttribute('disabled', 'disabled')
    }
  }
})


select.addEventListener('change', () => {
  

  if(select.value == 1){
    $('.pos-grad').hide()
    $('.graduacao').show()
  }

  if(select.value == 2){
    $('.graduacao').hide()
    $('.pos-grad').show()
  }

  console.log(select.value);

})
