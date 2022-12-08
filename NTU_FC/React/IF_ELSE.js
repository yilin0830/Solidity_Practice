let jsJobDone = false;

const CurrentLearningStatus = () => {
  return (
    <div>
      {jsJobDone? (
        <div>Done</div>
       ) : (
        <div>undone</div>
      )}
    </div>
  )
}

const rootElement = document.getElementById("root");
ReactDOM.render(<CurrentLearningStatus />, rootElement);