const email = () => {

  const emailIcon = document.querySelector('.fa-envelope');
  const writtenEmail = document.querySelector('.written-email');
  if (emailIcon) {
    emailIcon.addEventListener('click', event => {
      writtenEmail.style.marginLeft = 0;
      writtenEmail.innerHTML = "contact@renodor.co"
    })
  }
}


export { email };
