import { useState, useEffect } from "react";

function HIndexButton({ name, date }) {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState(true);

  function HandleButtonClickHoldIndex({ name, date }) {
    const DBName = name.concat("_", date);

    useEffect(() => {
      setIsLoading(true);

      fetch("/lookup_index", {
        method: "POST",
        body: JSON.stringify(DBName),
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((result) => result.json())
        .then((data) => {
          setData(data);
          console.log(data);
          console.log(typeof data);
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
  }

  return (
    <button onClick={() => HandleButtonClickHoldIndex({ name, date })}>
      {name} {date}
    </button>
    // alert(name, date);
  );
}

export default HIndexButton;
