

const mainSelect = document.getElementById('mainSelect');
const additionalOptionsContainer = document.getElementById('additionalOptionsContainer');


const additionalOptions = {
    Velachery: ['Single','Double','Suite'],
    Koyambedu: ['Single','Double','Suite'],
    T_Nagar: ['Single','Double','Suite'],
    Tambaram: ['Single','Double','Suite'],
   
};


mainSelect.addEventListener('change', function() {
    const selectedOption = mainSelect.value;
    const places = additionalOptions[selectedOption];
    
  
    additionalOptionsContainer.innerHTML = '';

   
    places.forEach(place => {
        const optionElement = document.createElement('option');
        optionElement.innerText = place;
        
        additionalOptionsContainer.appendChild(optionElement);
    });
});

const startTimeInput = document.getElementById('startTime');
const endTimeInput = document.getElementById('endTime');
const timeDifferenceOutput = document.getElementById('timeDifference');
const amountInput = document.getElementById('amountInput');
const amountInput1 = document.getElementById('amountInput1');
const amountInput2 = document.getElementById('amountInput2');


function calculateTimeDifference() {
    const startTime = new Date(startTimeInput.value);
    const endTime = new Date(endTimeInput.value);

    if (isNaN(startTime) || isNaN(endTime)) {
        timeDifferenceOutput.textContent = 'Invalid input';
        amountInput.value = '';
        return;
    }

    const timeDiffInMinutes = Math.floor((endTime - startTime) / (1000 * 60));
   const hours = Math.floor(timeDiffInMinutes / 60);
    const minutes = timeDiffInMinutes % 60;

timeDifferenceOutput.textContent = `${hours} hours ${minutes} minutes`;

if ( hours == 0 && minutes<=60) {
amountInput.value = '500 ₹  ';
amountInput1.value = '100 ₹ ';

} else if (hours==1 &&minutes <=60 ) {
amountInput.value = ' 1000 ₹';
amountInput1.value = ' 200 ₹  ';
}else if (hours==1 &&minutes <=60 ) {
    amountInput.value = ' 2000 ₹';
    amountInput1.value = ' 300 ₹  ';
}else if (hours==1 &&minutes <=60 ) {
        amountInput.value = ' 3000 ₹';
        amountInput1.value = ' 400 ₹  ';
}else if (hours==1 &&minutes <=60 ) {
amountInput.value = ' 4000 ₹';
amountInput1.value = ' 500 ₹  ';
}else if (hours==1 &&minutes <=60 ) {
    amountInput.value = ' 5000 ₹';
    amountInput1.value = ' 600 ₹  ';
}else {
amountInput.value = ' 6000 ₹  ';
amountInput1.value = ' 700 ₹ ';
}
const num1 = parseFloat(amountInput.value);
const num2 = parseFloat(amountInput1.value);
amountInput2.value = '₹' +(num1  + num2)  ;
const totalAmount = amountInput2.value

const total = document.getElementById('total')
        total.textContent=  totalAmount


    
}

startTimeInput.addEventListener('change', calculateTimeDifference);
endTimeInput.addEventListener('change', calculateTimeDifference);

const editButton = document.getElementById('editButton');
const inputDiv = document.getElementById('inputDiv');
const saveButton = document.getElementById('saveButton');
const detailsDiv = document.getElementById('detailsDiv');
const nameInput = document.getElementById('nameInput');
const emailInput = document.getElementById('emailInput');
const locationInput = document.getElementById('locationInput');
const nameSpan = document.getElementById('name');
const emailSpan = document.getElementById('email');
const locationSpan = document.getElementById('location');
const editDetailsButton = document.getElementById('editDetailsButton');
const tap1 = document.getElementById('tap1')

editButton.addEventListener('click', () => {
    inputDiv.classList.remove('hidden');
    editButton.classList.add('hidden');
    tap1.style.display = "none";
    
});

saveButton.addEventListener('click', () => {
    const name = nameInput.value;
    const email = emailInput.value;
    const location = locationInput.value;

    nameSpan.textContent = name;
    emailSpan.textContent = email;
    locationSpan.textContent = location;

    tap1.style.display = "none";
    detailsDiv.classList.remove('hidden');
    inputDiv.classList.add('hidden');
    editDetailsButton.classList.remove('hidden');
});

editDetailsButton.addEventListener('click', () => {
    detailsDiv.classList.add('hidden');
    
    inputDiv.classList.remove('hidden');
    editDetailsButton.classList.add('hidden');
});

const editButton1 = document.getElementById('editButton1');
const inputDiv1 = document.getElementById('inputDiv1');
const saveButton1 = document.getElementById('saveButton1');
const detailsDiv1 = document.getElementById('detailsDiv1');
const nameInput1 = document.getElementById('nameInput1');
const emailInput1 = document.getElementById('emailInput1');

const nameSpan1 = document.getElementById('name1');
const emailSpan1 = document.getElementById('email1');

const editDetailsButton1 = document.getElementById('editDetailsButton1');
const tap3 = document.getElementById('tap3')

editButton1.addEventListener('click', () => {
    inputDiv1.classList.remove('hidden1');
    editButton1.classList.add('hidden1');
    tap3.style.display = "none";
    
});

saveButton1.addEventListener('click', () => {
    const name1 = nameInput1.value;
    const email1 = emailInput1.value;
    

    nameSpan1.textContent = name1;
    emailSpan1.textContent = email1;
    

    tap3.style.display = "none";
    detailsDiv1.classList.remove('hidden1');
    inputDiv1.classList.add('hidden1');
    editDetailsButton1.classList.remove('hidden1');
});

editDetailsButton1.addEventListener('click', () => {
    detailsDiv1.classList.add('hidden1');
    
    inputDiv1.classList.remove('hidden1');
    editDetailsButton1.classList.add('hidden1');
});

const editButton2 = document.getElementById('editButton2');
const inputDiv2 = document.getElementById('inputDiv2');
const saveButton2 = document.getElementById('saveButton2');
const detailsDiv2 = document.getElementById('detailsDiv2');

const check = document.getElementById('check')

const nameSpan2 = document.getElementById('name2');


const editDetailsButton2 = document.getElementById('editDetailsButton2');
const tap5 = document.getElementById('tap5')

editButton2.addEventListener('click', () => {
    inputDiv2.classList.remove('hidden2');
    editButton2.classList.add('hidden2');
    tap5.style.display = "none";
    
});

saveButton2.addEventListener('click', () => {
    
    

  const check1 =  check.value;
  nameSpan2.textContent=check1;

    

    tap5.style.display = "none";
    detailsDiv2.classList.remove('hidden2');
    inputDiv2.classList.add('hidden2');
    editDetailsButton2.classList.remove('hidden2');
});

editDetailsButton2.addEventListener('click', () => {
    detailsDiv2.classList.add('hidden2');
    
    inputDiv2.classList.remove('hidden2');
    editDetailsButton2.classList.add('hidden2');
});

const buttonclick = document.getElementById('buttonclick')
buttonclick.addEventListener('click',()=>{
    alert('your data is submitted')
    location.reload();
})

