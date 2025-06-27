document.addEventListener('DOMContentLoaded', () => {
    const themeToggleButton = document.getElementById('themeToggleButton');
    const themeButtonText = document.getElementById('themeButtonText');
    const body = document.body;

    // Declaraciones de elementos (asegurarse de que existan)
    const h2Title = document.querySelector('h2.title');
    const eppSubtitle = document.getElementById('eppSubtitle'); // De index.aspx
    const pageSubtitle = document.getElementById('pageSubtitle'); // De index.aspx
    const mainTitleWebForm1 = document.getElementById('mainTitleWebForm1'); // De WebForm1.aspx
    const subtitleWebForm1 = document.getElementById('subtitleWebForm1'); // De WebForm1.aspx
    const lblResultado = document.getElementById('lblResultado'); // De WebForm1.aspx

    const allBoxes = document.querySelectorAll('.box');
    const formLabels = document.querySelectorAll('.field .label'); // Etiquetas de formularios
    const formButtons = document.querySelectorAll('.field.is-grouped .button'); // Botones dentro de un grupo de campo (Calcular, Volver al Inicio)

    // Función auxiliar para eliminar clases de color/fondo de Bulma
    const removeBulmaColorClasses = (element) => {
        element.classList.remove(
            'is-primary', 'is-link', 'is-info', 'is-success', 'is-warning', 'is-danger',
            'is-white', 'is-black', 'is-dark', 'is-light', 'is-ghost', 'is-outlined' // También removemos is-outlined para control total
        );
        // También remover clases de fondo de gris para el body
        element.classList.remove(
            'has-background-white-ter', 'has-background-white-bis',
            'has-background-grey-lighter', 'has-background-grey-light',
            'has-background-grey', 'has-background-grey-dark',
            'has-background-grey-darker', 'has-background-black-bis',
            'has-background-black-ter'
        );
    };

    const applyTheme = (theme) => {
        if (!themeToggleButton || !themeButtonText || !body) {
            console.error('Elementos esenciales no encontrados para aplicar el tema.');
            return;
        }

        const iconElement = themeToggleButton.querySelector('.icon i');

        // Limpiar cualquier estilo en línea previo para evitar conflictos
        themeToggleButton.style.borderColor = '';
        themeToggleButton.style.color = '';
        formButtons.forEach(button => {
            button.style.borderColor = '';
            button.style.color = '';
        });


        if (theme === 'dark') {
            // Body: Fondo negro oscuro (Bulma black-ter)
            removeBulmaColorClasses(body); // Limpiar todas las clases de fondo
            body.classList.add('has-background-black-ter', 'has-text-white');
            body.classList.remove('has-text-black'); // Asegurar texto blanco

            // Títulos y Subtítulos
            if (h2Title) h2Title.classList.replace('has-text-black', 'has-text-white');
            if (eppSubtitle) eppSubtitle.classList.replace('has-text-info-dark', 'has-text-info-light');
            if (pageSubtitle) pageSubtitle.classList.replace('has-text-grey-dark', 'has-text-grey-light');
            if (mainTitleWebForm1) mainTitleWebForm1.classList.replace('has-text-black', 'has-text-white');
            if (subtitleWebForm1) subtitleWebForm1.classList.replace('has-text-grey', 'has-text-grey-light');

            // Cajas (Box): Fondo oscuro, texto blanco
            allBoxes.forEach(box => {
                removeBulmaColorClasses(box); // Limpiar clases de fondo del box
                box.classList.add('has-background-dark', 'has-text-white');
                box.classList.remove('has-text-black'); // Asegurar texto blanco
            });
            document.querySelectorAll('.box .title').forEach(title => {
                title.classList.add('has-text-white');
                title.classList.remove('has-text-info-dark', 'has-text-primary-dark', 'has-text-danger-dark', 'has-text-success-dark', 'has-text-warning-dark', 'has-text-link-dark');
            });
            document.querySelectorAll('.box .subtitle').forEach(subtitle => {
                subtitle.classList.replace('has-text-grey', 'has-text-grey-light');
            });

            // Labels de formulario
            formLabels.forEach(label => {
                label.classList.replace('has-text-black', 'has-text-white');
                label.classList.replace('has-text-grey-dark', 'has-text-white');
            });

            // Resultado de WebForm1.aspx
            if (lblResultado) {
                lblResultado.classList.replace('has-text-black', 'has-text-white');
                lblResultado.classList.replace('has-text-info', 'has-text-white');
                lblResultado.classList.replace('has-text-success', 'has-text-white');
                lblResultado.classList.replace('has-text-danger', 'has-text-white');
                lblResultado.classList.replace('has-text-warning', 'has-text-white');
            }

            // --- Botón de Alternar Tema (Modo Oscuro) ---
            themeButtonText.textContent = 'Modo Claro'; // El texto del botón debe sugerir cambiar a "Modo Claro"
            if (iconElement) iconElement.classList.replace('fa-moon', 'fa-sun'); // El icono debe ser el sol

            removeBulmaColorClasses(themeToggleButton); // Eliminar todas las clases de color existentes
            themeToggleButton.classList.add('is-dark'); // Hacer el botón oscuro (sólido, con texto blanco por defecto de Bulma)
            themeToggleButton.classList.remove('is-outlined'); // Asegurarse de que no esté delineado

            // --- LÓGICA PARA BOTONES DE FORMULARIO (btnCalcular, btnVolver) ---
            formButtons.forEach(button => {
                if (button.id === 'btnCalcular') {
                    removeBulmaColorClasses(button); // Limpiar clases existentes
                    button.classList.add('is-primary'); // En modo oscuro, btnCalcular es primario (verde sólido)
                    button.classList.remove('is-outlined'); // Asegurarse de que no esté delineado
                }
                if (button.id === 'btnVolver') {
                    removeBulmaColorClasses(button);
                    button.classList.add('is-link', 'is-light', 'is-outlined'); // Mantener este estilo para volver
                }
            });

            body.setAttribute('data-theme', 'dark');
            localStorage.setItem('theme', 'dark');

        } else { // theme === 'light'
            // Body: Fondo gris ligeramente más oscuro (usando has-background-white-bis o has-background-grey-lighter)
            removeBulmaColorClasses(body); // Limpiar todas las clases de fondo
            body.classList.add('has-background-white-bis', 'has-text-black'); // Puedes probar 'has-background-grey-lighter' si quieres más oscuro
            body.classList.remove('has-text-white'); // Asegurar texto negro

            // Títulos y Subtítulos
            if (h2Title) h2Title.classList.replace('has-text-white', 'has-text-black');
            if (eppSubtitle) eppSubtitle.classList.replace('has-text-info-light', 'has-text-info-dark');
            if (pageSubtitle) pageSubtitle.classList.replace('has-text-grey-light', 'has-text-grey-dark');
            if (mainTitleWebForm1) mainTitleWebForm1.classList.replace('has-text-white', 'has-text-black');
            if (subtitleWebForm1) subtitleWebForm1.classList.replace('has-text-grey-light', 'has-text-grey');

            // Cajas (Box): Fondo blanco puro (si no es Bulma nativa, usaremos estilo en línea)
            allBoxes.forEach(box => {
                removeBulmaColorClasses(box); // Limpiar clases de fondo del box
                // Queremos que sea blanco puro o muy claro para que resalte.
                // Bulma no tiene un "has-background-white-pure".
                // has-background-white-ter es un blanco roto.
                // Si quieres BLANCO PURO para los BOX, necesitarás estilo en línea o CSS personalizado.
                // Para este ejemplo, lo haremos blanco puro con estilo en línea para asegurar.
                box.classList.add('has-background-white-bis'); // O has-background-white-ter si quieres un gris muy muy claro
                box.style.backgroundColor = '#ffffff'; // FUERZA BLANCO PURO
                box.classList.remove('has-text-white'); // Asegurar texto negro
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

            // Labels de formulario
            formLabels.forEach(label => {
                label.classList.replace('has-text-white', 'has-text-black');
            });

            // Resultado de WebForm1.aspx
            if (lblResultado) {
                lblResultado.classList.replace('has-text-white', 'has-text-black');
            }

            // --- Botón de Alternar Tema (Modo Claro) ---
            themeButtonText.textContent = 'Modo Oscuro'; // El texto del botón debe sugerir cambiar a "Modo Oscuro"
            if (iconElement) iconElement.classList.replace('fa-sun', 'fa-moon'); // El icono debe ser la luna

            removeBulmaColorClasses(themeToggleButton); // Limpiar todas las clases de color existentes
            themeToggleButton.classList.add('is-white', 'is-outlined'); // Blanco, delineado. Debería tener borde y texto gris oscuro.
            themeToggleButton.style.borderColor = '#000'; // FUERZA BORDE NEGRO
            themeToggleButton.style.color = '#000';      // FUERZA TEXTO NEGRO

            // --- LÓGICA PARA BOTONES DE FORMULARIO (btnCalcular, btnVolver) ---
            formButtons.forEach(button => {
                if (button.id === 'btnCalcular') {
                    removeBulmaColorClasses(button); // Limpiar clases existentes
                    button.classList.add('is-white', 'is-outlined'); // Blanco, delineado.
                    button.style.borderColor = '#000'; // FUERZA BORDE NEGRO
                    button.style.color = '#000';      // FUERZA TEXTO NEGRO
                }
                if (button.id === 'btnVolver') {
                    removeBulmaColorClasses(button);
                    button.classList.add('is-link', 'is-light', 'is-outlined'); // Mantener este estilo para volver
                }
            });

            body.setAttribute('data-theme', 'light');
            localStorage.setItem('theme', 'light');
        }
    };

    const toggleTheme = () => {
        const currentTheme = body.getAttribute('data-theme');
        if (currentTheme === 'light') {
            applyTheme('dark');
        } else {
            applyTheme('light');
        }
    };

    // Inicialización del tema al cargar la página
    if (themeToggleButton) {
        themeToggleButton.addEventListener('click', (event) => {
            event.preventDefault();
            toggleTheme();
        });

        const savedTheme = localStorage.getItem('theme');
        if (savedTheme === 'dark') {
            applyTheme('dark');
        } else {
            // Asegúrate de que el body inicia con la clase correcta si el tema inicial es light
            body.setAttribute('data-theme', 'light');
            applyTheme('light');
        }
    } else {
        console.error('ModoOscuro.js: ¡Elemento con ID "themeToggleButton" no encontrado!');
    }
});