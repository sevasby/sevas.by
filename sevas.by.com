<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sevas.by - Cinesevas HD</title>
    <style>
        /* Estilos generales */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            overflow-x: hidden;
        }

        header {
            background: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        header .logo {
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 10px;
        }

        nav {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 10px;
        }

        nav a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 1.1em;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #3498db;
        }

        .hero {
            background: url('https://via.placeholder.com/1920x600') no-repeat center center/cover;
            color: #ecf0f1;
            padding: 100px 20px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero h2 {
            font-size: 3em;
            margin-bottom: 20px;
            animation: fadeIn 2s ease-out;
        }

        .hero p {
            font-size: 1.2em;
            margin-bottom: 20px;
            animation: fadeIn 3s ease-out;
        }

        .hero .btn {
            background: #e74c3c;
            color: #fff;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            text-decoration: none;
            transition: background 0.3s ease;
            animation: fadeIn 4s ease-out;
        }

        .hero .btn:hover {
            background: #c0392b;
        }

        section#features {
            padding: 60px 20px;
            text-align: center;
            background: #f5f5f5;
        }

        #features h2 {
            margin-bottom: 30px;
            font-size: 2.5em;
        }

        .feature-card {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin: 15px;
            display: inline-block;
            width: calc(33% - 30px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeIn 5s ease-out;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .feature-card h3 {
            margin-bottom: 10px;
            font-size: 1.5em;
        }

        .feature-card p {
            font-size: 1.1em;
        }

        footer {
            background: #2c3e50;
            color: #ecf0f1;
            text-align: center;
            padding: 15px;
        }

        @media (max-width: 768px) {
            .feature-card {
                width: calc(50% - 30px);
            }
        }

        @media (max-width: 480px) {
            .feature-card {
                width: 100%;
            }

            nav {
                flex-direction: column;
            }

            nav a {
                margin: 5px 0;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">Sevas.by</div>
        <nav>
            <a href="#">Inicio</a>
            <a href="#">Aplicaciones</a>
            <a href="#">Contacto</a>
        </nav>
        <div class="hero">
            <h2>Bienvenido a Cinesevas HD</h2>
            <p>La mejor aplicación para ver tus películas favoritas.</p>
            <a href="#" class="btn">Descargar Ahora</a>
        </div>
    </header>

    <section id="features">
        <h2>Características</h2>
        <div class="feature-card">
            <h3>Calidad HD</h3>
            <p>Disfruta de tus películas en alta definición.</p>
        </div>
        <div class="feature-card">
            <h3>Fácil de Usar</h3>
            <p>Interfaz intuitiva y fácil de navegar.</p>
        </div>
        <div class="feature-card">
            <h3>Amplia Biblioteca</h3>
            <p>Acceso a una gran selección de películas.</p>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Sevas.by. Todos los derechos reservados.</p>
    </footer>

    <script>
        // Ejemplo de funcionalidad JavaScript
        document.querySelectorAll('.btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('¡Gracias por tu interés en Cinesevas HD!');
            });
        });
    </script>
</body>
</html>
