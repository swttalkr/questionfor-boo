<!DOCTYPE html><html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Valentine Question</title>
  <style>
    body {
      margin: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(135deg, #ff9a9e, #fad0c4);
      font-family: 'Arial', sans-serif;
      text-align: center;
      color: #fff;
    }.card {
  background: rgba(255, 255, 255, 0.15);
  padding: 40px 30px;
  border-radius: 20px;
  box-shadow: 0 10px 30px rgba(0,0,0,0.2);
}

h1 {
  font-size: 2.2rem;
  margin-bottom: 30px;
}

.buttons {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-top: 20px;
}

button {
  border: none;
  border-radius: 50px;
  padding: 15px 30px;
  font-size: 1.1rem;
  cursor: pointer;
  transition: all 0.3s ease;
}

#yesBtn {
  background: #ff4d6d;
  color: white;
  font-size: 1.2rem;
}

#noBtn {
  background: #ffffff;
  color: #ff4d6d;
}

#message {
  margin-top: 25px;
  font-size: 1.2rem;
  min-height: 1.5em;
}

  </style>
</head>
<body>
  <div class="card">
    <h1>Will you be my forever?</h1>
    <div class="buttons">
      <button id="yesBtn">YES</button>
      <button id="noBtn">NO</button>
    </div>
    <div id="message"></div>
  </div> <script>
    const yesBtn = document.getElementById('yesBtn');
    const noBtn = document.getElementById('noBtn');
    const message = document.getElementById('message');

    const noMessages = [
      "are you sure?",
      "boo u sure",
      "booooo",
      "just say yes boo",
      "boo pleaseeeee"
    ];

    let noClickCount = 0;
    let yesScale = 1;

    noBtn.addEventListener('click', () => {
      message.textContent = noMessages[noClickCount % noMessages.length];
      noClickCount++;

      yesScale += 0.25;
      yesBtn.style.transform = `scale(${yesScale})`;
    });

    yesBtn.addEventListener('click', () => {
      document.querySelector('.card').innerHTML = `
        <h1>i love you boo ❤️</h1>
      `;
    });
  </script></body>
</html>
