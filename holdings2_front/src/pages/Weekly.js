import { useState, useEffect } from "react";
import WeeklyButton from "../components/WeeklyButton";

function Weekly() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

  useEffect(() => {
    setIsLoading(true);

    fetch("/button_names")
      .then((result) => result.json())
      .then((data) => {
        setData(data);
        console.log("button names", data, typeof data);
      })
      .catch((err) => {
        console.log(err);
      })
      .finally(() => {
        setIsLoading(false);
      });
  }, []);

  if (isLoading) {
    return (
      <section>
        <p>Loading...</p>
      </section>
    );
  }

  const arrayItems = data.map((name1) => (
    <WeeklyButton name={name1}></WeeklyButton>
  ));
  return (
    <div>
      <h3>weekly scans</h3>
      <ul>{arrayItems}</ul>
    </div>
  );
}

export default Weekly;
