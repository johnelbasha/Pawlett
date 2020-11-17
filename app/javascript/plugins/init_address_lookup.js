const postCode = document.querySelector('#user_postal_code');
const lookUpButton = document.querySelector('#lookUp');
const addressField = document.querySelector('#user_house_name_or_number');



const initAddressLookup = () => {
  console.log('Hey John! You are doing a great job!');

  lookUpButton.addEventListener('click', (event) => {
    console.log(postCode.value);
    getAddresses(postCode.value);
  } );

};


const getAddresses = (postcode) => {
  const apiUrl = `https://api.getaddress.io/find/${postcode}?api-key=cCiwFPa5CUKFHTq4zIImzg29178`
  fetch(apiUrl)
    .then(response => response.json())
    .then((data) => {
      data.addresses.forEach((address) => {
        console.log(address);
        const newAddress = `<option value="${address}">${address}</option>`;
        addressField.insertAdjacentHTML('beforeend', newAddress);
      });
    });
};








export { initAddressLookup };

