const calculatorButtons = document.querySelectorAll('.calculatorButton');
const currentiLevelButtons = document.querySelectorAll('.currentiLevelButton');
const desirediLevelButtons = document.querySelectorAll('.desirediLevelButton');
const soulAshNeeded = document.querySelector('.soulAshNeeded');

calculatorButtons.forEach((calculatorButton) => {
    calculatorButton.addEventListener('click', selectButton);
});

function selectButton(e) {
    clearButtons(e);
    const selectedButton = e.target;
    selectedButton.classList.add('currentlySelectedButton');

    // !Add selection to variables to calculate cost
    if(e.target.classList.contains('currentiLevelButton')) {
        const currentiLevelSelection = e.target.dataset.soulashcost;
        console.log(currentiLevelSelection);
    } else {
        const desirediLevelSelection = e.target.dataset.soulashcost;
        console.log(desirediLevelSelection);
    }
    calculateCost();
};

function clearButtons(e) {
    if(e.target.classList.contains('currentiLevelButton')) {
        currentiLevelButtons.forEach((currentiLevelButton) => {
            currentiLevelButton.classList.remove('currentlySelectedButton')
        });
    } else {
        desirediLevelButtons.forEach((desirediLevelButton) => {
            desirediLevelButton.classList.remove('currentlySelectedButton')
        });
    };
};

// !Soul Ash Calculation! //
function calculateCost() {
    const soulAshCost = desirediLevelSelection - currentiLevelSelection;
    
}
