function WeeklyButton({ name }) {
  function ClickHandler({ name }) {
    fetch(`/wscan/${name}`)
      .then((result) => result.json())
      .then((data) => {
        console.log("weekly button:", data, typeof data);
      })
      .catch((err) => {
        console.log(err);
      });
  }

  return (
    <button
      //   className={classes.button}
      onClick={() => ClickHandler({ name })}
    >
      {name}
    </button>
  );
}

export default WeeklyButton;
