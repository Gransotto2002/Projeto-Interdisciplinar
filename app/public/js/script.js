localStorage.setItem('isChecked', true);

const check = document.getElementById('openSidebarMenu');
check.addEventListener('change', listenerCheck)
const isChecked = localStorage.getItem('isChecked');
check.checked = isChecked === 'true';

function listenerCheck(event) {
    localStorage.setItem('isChecked', event.target.checked);
}