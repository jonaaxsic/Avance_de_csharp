document.addEventListener('DOMContentLoaded', () => {
    const themeToggleButton = document.getElementById('themeToggleButton');
    const themeButtonText = document.getElementById('themeButtonText');
    const body = document.body;

    // Elementos que podrían estar presentes en diferentes páginas
    const h2Title = document.querySelector('h2.title');
    const eppSubtitle = document.getElementById('eppSubtitle');
    const pageSubtitle = document.getElementById('pageSubtitle');
    const mainTitleWebForm1 = document.getElementById('mainTitleWebForm1');
    const subtitleWebForm1 = document.getElementById('subtitleWebForm1');
    const lblResultado = document.getElementById('lblResultado');

    const allBoxes = document.querySelectorAll('.box');
    const formLabels = document.querySelectorAll('.field .label');
    const formButtons = document.querySelectorAll('.field.is-grouped .button');

    // Elimina todas las clases de color y fondo de Bulma de un elemento
    const removeBulmaColorClasses = (element) => {
        element.classList.remove(
            'is-primary', 'is-link', 'is-info', 'is-success', 'is-warning', 'is-danger',
            'is-white', 'is-black', 'is-dark', 'is-light', 'is-ghost', 'is-outlined'
        );
        element.classList.remove(
            'has-background-white-ter', 'has-background-white-bis',
            'has-background-grey-lighter', 'has-background-grey-light',
            'has-background-grey', 'has-background-grey-dark',
            'has-background-grey-darker', 'has-background-black-bis',
            'has-background-black-ter'
        );
    };

    // Aplica el tema claro u oscuro
    const applyTheme = (theme) => {
        if (!themeToggleButton || !themeButtonText || !body) {
            console.error('Elementos esenciales no encontrados para aplicar el tema.');
            return;
        }

        const iconElement = themeToggleButton.querySelector('.icon i');

        themeToggleButton.style.borderColor = '';
        themeToggleButton.style.color = '';
        formButtons.forEach(button => {
            button.style.borderColor = '';
            button.style.color = '';
        });

        if (theme === 'dark') {
            // Aplicar Modo Oscuro
            removeBulmaColorClasses(body);
            body.classList.add('has-background-black-ter', 'has-text-white');
            body.classList.remove('has-text-black');

            if (h2Title) h2Title.classList.replace('has-text-black', 'has-text-white');
            if (eppSubtitle) eppSubtitle.classList.replace('has-text-info-dark', 'has-text-info-light');
            if (pageSubtitle) pageSubtitle.classList.replace('has-text-grey-dark', 'has-text-grey-light');
            if (mainTitleWebForm1) mainTitleWebForm1.classList.replace('has-text-black', 'has-text-white');
            if (subtitleWebForm1) subtitleWebForm1.classList.replace('has-text-grey', 'has-text-grey-light');

            allBoxes.forEach(box => {
                removeBulmaColorClasses(box);
                box.classList.add('has-background-dark', 'has-text-white');
                box.classList.remove('has-text-black');
            });

            document.querySelectorAll('.box .title').forEach(title => {
                title.classList.add('has-text-white');
                title.classList.remove('has-text-info-dark', 'has-text-primary-dark', 'has-text-danger-dark', 'has-text-success-dark', 'has-text-warning-dark', 'has-text-link-dark');
            });
            document.querySelectorAll('.box .subtitle').forEach(subtitle => {
                subtitle.classList.replace('has-text-grey', 'has-text-grey-light');
            });

            formLabels.forEach(label => {
                label.classList.replace('has-text-black', 'has-text-white');
                label.classList.replace('has-text-grey-dark', 'has-text-white');
            });

            if (lblResultado) {
                lblResultado.classList.replace('has-text-black', 'has-text-white');
                lblResultado.classList.replace('has-text-info', 'has-text-white');
                lblResultado.classList.replace('has-text-success', 'has-text-white');
                lblResultado.classList.replace('has-text-danger', 'has-text-white');
                lblResultado.classList.replace('has-text-warning', 'has-text-white');
            }

            themeButtonText.textContent = 'Modo Claro';
            if (iconElement) iconElement.classList.replace('fa-moon', 'fa-sun');
            removeBulmaColorClasses(themeToggleButton);
            themeToggleButton.classList.add('is-dark');
            themeToggleButton.classList.remove('is-outlined');

            formButtons.forEach(button => {
                if (button.id === 'btnCalcular') {
                    removeBulmaColorClasses(button);
                    button.classList.add('is-primary');
                    button.classList.remove('is-outlined');
                }
                if (button.id === 'btnVolver') {
                    removeBulmaColorClasses(button);
                    button.classList.add('is-link', 'is-light', 'is-outlined');
                }
            });

            body.setAttribute('data-theme', 'dark');
            localStorage.setItem('theme', 'dark');

        } else {
            // Aplicar Modo Claro
            removeBulmaColorClasses(body);
            body.classList.add('has-background-white-bis', 'has-text-black');
            body.classList.remove('has-text-white');

            if (h2Title) h2Title.classList.replace('has-text-white', 'has-text-black');
            if (eppSubtitle) eppSubtitle.classList.replace('has-text-info-light', 'has-text-info-dark');
            if (pageSubtitle) pageSubtitle.classList.replace('has-text-grey-light', 'has-text-grey-dark');
            if (mainTitleWebForm1) mainTitleWebForm1.classList.replace('has-text-white', 'has-text-black');
            if (subtitleWebForm1) subtitleWebForm1.classList.replace('has-text-grey-light', 'has-text-grey');

            allBoxes.forEach(box => {
                removeBulmaColorClasses(box);
                box.classList.add('has-background-white-bis');
                box.style.backgroundColor = '#ffffff';
                box.classList.remove('has-text-white');
            });

            document.querySelectorAll('.box .title').forEach(title => {
                title.classList.remove('has-text-white');
                const parentColumn = title.closest('.column');
                if (parentColumn) {
                    if (parentColumn.querySelector('asp\\:Button[id="BtnPG1"]')) title.classList.add('has-text-info-dark');
                    else if (parentColumn.querySelector('asp\\:Button[id="btnPG2"]')) title.classList.add('has-text-primary-dark');
                    else if (parentColumn.querySelector('asp\\:Button[id="btnPG3"]')) title.classList.add('has-text-danger-dark');
                    else if (parentColumn.querySelector('asp\\:Button[id="BtnPG4"]')) title.classList.add('has-text-success-dark');
                    else if (parentColumn.querySelector('asp\\:Button[id="BtnVariables"]')) title.classList.add('has-text-warning-dark');
                    else if (parentColumn.querySelector('asp\\:Button[id="btnPG5"]')) title.classList.add('has-text-link-dark');
                }
            });

            document.querySelectorAll('.box .subtitle').forEach(subtitle => {
                subtitle.classList.replace('has-text-grey-light', 'has-text-grey');
            });

            formLabels.forEach(label => {
                label.classList.replace('has-text-white', 'has-text-black');
            });

            if (lblResultado) {
                lblResultado.classList.replace('has-text-white', 'has-text-black');
            }

            themeButtonText.textContent = 'Modo Oscuro';
            if (iconElement) iconElement.classList.replace('fa-sun', 'fa-moon');
            removeBulmaColorClasses(themeToggleButton);
            themeToggleButton.classList.add('is-white', 'is-outlined');
            themeToggleButton.style.borderColor = '#000';
            themeToggleButton.style.color = '#000';

            formButtons.forEach(button => {
                if (button.id === 'btnCalcular') {
                    removeBulmaColorClasses(button);
                    button.classList.add('is-white', 'is-outlined');
                    button.style.borderColor = '#000';
                    button.style.color = '#000';
                }
                if (button.id === 'btnVolver') {
                    removeBulmaColorClasses(button);
                    button.classList.add('is-link', 'is-light', 'is-outlined');
                }
            });

            body.setAttribute('data-theme', 'light');
            localStorage.setItem('theme', 'light');
        }
    };

    // Cambia entre temas claro y oscuro
    const toggleTheme = () => {
        const currentTheme = body.getAttribute('data-theme');
        if (currentTheme === 'light') {
            applyTheme('dark');
        } else {
            applyTheme('light');
        }
    };

    // Configuración inicial del tema y botón
    if (themeToggleButton) {
        themeToggleButton.addEventListener('click', (event) => {
            event.preventDefault();
            toggleTheme();
        });

        const savedTheme = localStorage.getItem('theme');
        if (savedTheme === 'dark') {
            applyTheme('dark');
        } else {
            body.setAttribute('data-theme', 'light');
            applyTheme('light');
        }
    } else {
        console.error('ModoOscuro.js: ¡Elemento con ID "themeToggleButton" no encontrado!');
    }
});