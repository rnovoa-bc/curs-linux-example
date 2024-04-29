fetch("http://localhost:3000/total")
  .then( res => res.json() )
  .then( data => {
    const id  = Math.ceil(Math.random() * data.total);
    fetch(`http://localhost:3000/${id}`)
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