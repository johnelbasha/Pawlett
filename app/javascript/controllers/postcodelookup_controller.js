import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log('Hello from the file postcodelookup_controller.js');

    const postCode = document.querySelector('#user_postal_code');
    console.log(postCode);
    const lookUpButton = document.querySelector('#lookUp');
    console.log(lookUpButton);
    const addressField = document.querySelector('#user_house_name_or_number');
    console.log(addressField);

    lookUpButton.addEventListener('click', (event) => {
        console.log(postCode.value);
        getAddresses(postCode.value);
      } );



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








































  }
}
