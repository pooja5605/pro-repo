<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project 4 DevOps !!!</title>
    <style>
        /* Reset and global styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background-color: #f0f2f5;
            color: #333;
            scroll-behavior: smooth;
        }

        /* Header styling */
        header {
            background: #4b6cb7;
            background: -webkit-linear-gradient(to right, #182848, #4b6cb7);
            background: linear-gradient(to right, #182848, #4b6cb7);
            color: #ffffff;
            padding: 1rem 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
            font-weight: 700;
        }

        /* Navigation styling */
        nav {
            background: #35424a;
            padding: 1rem 0;
            text-align: center;
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            margin: 0;
        }

        nav ul li a {
            color: #ffffff;
            text-decoration: none;
            font-weight: 600;
            padding: 0.5rem 1rem;
            border: 2px solid transparent;
            border-radius: 5px;
            transition: color 0.3s, border-color 0.3s, transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }

        nav ul li a:hover {
            color: #182848;
            border-color: #182848;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            transform: translateY(-3px);
        }

        /* Main container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        /* Banner section */
        .banner {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            margin-bottom: 3rem;
        }

        .banner img {
            width: 100%;
            display: block;
            transition: transform 0.5s ease;
        }

        .banner:hover img {
            transform: scale(1.05);
        }

        .banner-text {
            text-align: center;
            margin-top: 1rem;
        }

        .banner-text h1 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .banner-text p {
            font-size: 1.5rem;
            font-weight: 500;
            margin-bottom: 0;
        }

        /* Section styling */
        .section {
            padding: 4rem 0;
            text-align: center;
        }

        .section h2 {
            margin-bottom: 1rem;
            font-size: 2.5rem;
            font-weight: 700;
            color: #182848;
        }

        .section p {
            font-size: 1.1rem;
            color: #666;
            max-width: 800px;
            margin: 0 auto;
            line-height: 1.8;
        }

        /* Main content grid */
        .main-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
            justify-items: center;
        }

        /* Card styling */
        .card {
            position: relative;
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s;
            transform-style: preserve-3d;
            perspective: 1000px;
            text-align: left;
            max-width: 100%;
            cursor: pointer;
            overflow: hidden;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        .card:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .card:hover:before {
            opacity: 1;
        }

        .overlay-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .card:hover .overlay-content {
            opacity: 1;
        }

        .overlay-content a {
            color: #ffffff;
            background-color: #182848;
            padding: 0.5rem 1rem;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .overlay-content a:hover {
            background-color: #35424a;
        }

        /* Contact form */
        .contact-form {
            display: grid;
            grid-template-columns: 1fr;
            gap: 1rem;
            max-width: 400px;
            margin: 0 auto;
        }

        .contact-form input,
        .contact-form textarea,
        .contact-form button {
            width: 100%;
            padding: 0.5rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .contact-form button {
            background-color: #182848;
            color: #ffffff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .contact-form button:hover {
            background-color: #35424a;
        }

        /* Modal */
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.7);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            position: relative;
            border-radius: 10px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        #modal-body {
            padding: 20px;
        }

        /* Requirements section */
        .requirements {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 2rem;
        }

        .requirement-item {
            text-align: center;
            max-width: 200px;
        }

        .requirement-icon {
            font-size: 3rem;
        }

        .requirement-text {
            font-size: 1.2rem;
            margin-top: 0.5rem;
        }

        /* Media queries */
        @media (max-width: 768px) {
            .main-content {
                grid-template-columns: 1fr;
            }
        
        }
        .section {
        margin: 20px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .section h2 {
        font-size: 24px;
        color: #333;
        border-bottom: 1px solid #ccc;
        padding-bottom: 10px;
        margin-bottom: 20px;
    }

    .contact-info {
        font-size: 16px;
    }

    .contact-info p {
        margin-bottom: 10px;
    }

    .contact-info strong {
        font-weight: bold;
        margin-right: 5px;
    }

    .contact-info a {
        color: #007bff;
        text-decoration: none;
    }

    .contact-info a:hover {
        text-decoration: underline;
    }




    </style>
</head>
<body>
    <header>
        <h1>Project 4 DevOps !!!</h1>
    </header>
    <nav>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#services">Requirements</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>
    <div class="container">
        <div class="banner">
            <img src="https://github.com/Pratik-Pardeshi/Project-4/blob/340c1775d426028af0db9729b1366366de03d502/banner.png?raw=true" alt="banner">
        </div>
        <div class="banner-text">
            <h1>Hello all I'm Pratik Pardeshi</h1>
            <p>Welcome to My DevOps Project - 04 !!!</p>
        </div>
        <div class="section" id="about">
            <h2>About Project 4</h2>
            <p>In this project, I have created a CI/CD pipeline. 
                This pipeline involves pushing the code to GitHub, 
                then triggering Jenkins to pull the code from GitHub. 
                Finally, the code is deployed on Docker.
                After this you can access it through your docker server ip on web browser.</p>
        </div>
        <div class="section" id="services">
            <h2>Requirements for Project 4</h2>
            <div class="requirements">
                <div class="requirement-item">
                    <span class="requirement-icon">🏠</span>
                    <span class="requirement-text">Jenkins Server</span>
                </div>
                <div class="requirement-item">
                    <span class="requirement-icon">💻</span>
                    <span class="requirement-text">Docker Server</span>
                </div>
                <div class="requirement-item">
                    <span class="requirement-icon">📖</span>
                    <span class="requirement-text">Maven </span>
                </div>
                <div class="requirement-item">
                    <span class="requirement-icon">📡</span>
                    <span class="requirement-text">GitHub </span>
                </div>
            </div>
        </div>
        <div class="section" id="projects">
            <h2>More Projects</h2>
            <div class="main-content">
                <div id="project1" class="card">
                    <h3>Project 1</h3>
                    <p>Deploy web application using Tomcat, Docker, Kubernetes.</p>
                    <div class="overlay-content">
                        <a href="#">Learn More</a>
                    </div>
                </div>
                <div id="project2" class="card">
                    <h3>Project 2</h3>
                    <p>Deploy Petclinic web application using SpringBoot, Maven, Tomcat, Hibernate, Docker.</p>
                    <div class="overlay-content">
                        <a href="#">Learn More</a>
                    </div>
                </div>
                <div id="project3" class="card">
                    <h3>Project 3</h3>
                    <p>Notes-app-CICD-DevOps using Python, Django, React, NodeJs, Docker.</p>
                    <div class="overlay-content">
                        <a href="#">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section" id="contact">
            <h2>Contact Me</h2>
            <div class="contact-info">
                <p><strong>Email:</strong> <a href="mailto:pspardeshi2002@gmail.com">pspardeshi2002@gmail.com</a></p>
                <p><strong>Phone:</strong> +91 9763168031</p>
                <p><strong>Address:</strong> Raver, MH</p>
            </div>
        </div>
        
    </div>
    <footer>
        <div style="text-align: center;">
            <p>&copy; 2024 Developed By Pratik Pardeshi</p>
        </div>
        
    </footer>
    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <div id="modal-body">
                <!-- Project details will be dynamically inserted here -->
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const cards = document.querySelectorAll('.card');
            const modal = document.getElementById('modal');
            const modalContent = document.querySelector('.modal-content');
            const closeModal = document.querySelector('.close');

            cards.forEach(card => {
                card.addEventListener('click', function() {
                    const projectId = card.id;
                    let projectDetails = '';

                    switch (projectId) {
                        case 'project1':
                            projectDetails = `
                                <h2>Project 1 Details</h2>
                                <p>This project involves deploying a web application using Tomcat, Docker, and Kubernetes. It demonstrates the integration of containerization and orchestration technologies.</p>
                                <p><strong>Technologies used:</strong> Tomcat, Docker, Kubernetes</p>
                            `;
                            break;
                        case 'project2':
                            projectDetails = `
                                <h2>Project 2 Details</h2>
                                <p>This project deploys the Petclinic web application using SpringBoot, Maven, Tomcat, Hibernate, and Docker. It showcases a modern Java-based web application stack.</p>
                                <p><strong>Technologies used:</strong> SpringBoot, Maven, Tomcat, Hibernate, Docker</p>
                            `;
                            break;
                        case 'project3':
                            projectDetails = `
                                <h2>Project 3 Details</h2>
                                <p>This project involves building a Notes app with CI/CD using Python, Django, React, NodeJs, and Docker. It demonstrates a full-stack application deployment with continuous integration.</p>
                                <p><strong>Technologies used:</strong> Python, Django, React, NodeJs, Docker</p>
                            `;
                            break;
                        default:
                            projectDetails = '';
                            break;
                    }

                    document.getElementById('modal-body').innerHTML = projectDetails;
                    modal.style.display = 'block';
                });
            });

            closeModal.addEventListener('click', function() {
                modal.style.display = 'none';
            });

            window.addEventListener('click', function(event) {
                if (event.target === modal) {
                    modal.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>
