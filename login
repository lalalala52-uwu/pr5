
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Модуль аутентификации</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f8ff;
      text-align: center;
      padding: 30px;
    }
    .auth-module {
      max-width: 320px;
      margin: 0 auto;
      border: 2px solid #4a90e2;
      border-radius: 10px;
      padding: 20px;
      background-color: #e6f0ff;
    }
    button {
      background-color: #4a90e2;
      color: white;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      margin: 10px 0;
      transition: background-color 0.3s;
    }
    button:hover {
      background-color: #357abd;
    }
    input {
      width: 90%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #4a90e2;
      border-radius: 5px;
      font-size: 14px;
    }
    input::placeholder {
      color: #4a90e2;
      font-style: italic;
    }
  </style>
</head>
<body>
  <div class="auth-module">
    <button id="login-btn" onclick="showLoginForm()">Вход</button>
    <form id="login-form" style="display:none;" onsubmit="login(event)">
      <input type="text" name="username" placeholder="Имя пользователя" required />
      <input type="password" name="password" placeholder="Пароль" required />
      <button type="submit">Войти</button>
    </form>
    <button id="logout-btn" style="display:none;" onclick="logout()">Выйти</button>
  </div>

  <script>
    function showLoginForm() {
      document.getElementById('login-form').style.display = 'block';
      document.getElementById('login-btn').style.display = 'none';
    }

    function login(event) {
      event.preventDefault();
      alert('Вы вошли!'); // учебный вариант вместо реальной авторизации
      document.getElementById('login-form').style.display = 'none';
      document.getElementById('logout-btn').style.display = 'inline-block';
    }

    function logout() {
      alert('Вы вышли!');
      document.getElementById('logout-btn').style.display = 'none';
      document.getElementById('login-btn').style.display = 'inline-block';
    }
  </script>
</body>
</html>
