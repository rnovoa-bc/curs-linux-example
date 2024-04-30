fetch("http://10.160.3.180:3000/api/total")
  .then( res => res.json() )
  .then( data => {
    const id  = Math.ceil(Math.random() * data.total);
    fetch(`http://10.160.3.180:3000/api/${id}`)
      .then( res => res.json() )
      .then( data => {
        const questionElement = document.getElementById("question");
        const answerElement   = document.getElementById("answer");
        console.log(answerElement)
        questionElement.innerHTML = data.question;
        setTimeout(() => {
          answerElement.innerHTML = data.answer
        }, 3000);
      });
    
  });