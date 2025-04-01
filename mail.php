<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Icons with Links</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-bcZ5g0xMeIcNGD0otlUaMtwFyyz5E9bCT8CS9Rn2krQMyN2VG6OxU6SYb9GwJHjUMhHNbcXDDQhR3xZZt6xhbg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .round-social {
            display: flex;
            gap: 10px; 
        }
        .round-social a {
            display: inline-flex;
            justify-content: center;
            align-items: center;
            width: 40px;
            height: 40px;
            font-size: 20px;
            color: white;
            background-color: #333;
            border: 1px solid white;
            border-radius: 50%;
            text-decoration: none;
        }
        .round-social a:hover {
            background-color: #555;
        }

        /* Different background colors */
        .round-social .gmail {
            background-color: #4CAF50; /* Green */
        }

        .round-social .github {
            background-color: #FF5733; /* Red */
        } 

        .round-social .youtube {
            background-color: #F0C808; /* Yellow */ 
        }
    </style>
</head>
<body>
    <div class="round-social light">
        <!-- E-mail -->
        <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1" class="gmail ml-0 text-decoration-none text-white border border-white rounded-circle" target="_blank" aria-label="E-mail"><i class="far fa-envelope"></i></a>
       
    </div>

    <!-- Include Font Awesome icons -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js" integrity="sha512-WCzfhWGEuPRB4Wx3lRr1M1Bv4P52kGh9m77FtRQlReM2HxZ3CteMXdA2B3K5N8M26w9SGw2aj/rrNo0u7QvTxQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
