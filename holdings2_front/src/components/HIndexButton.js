import { useState, useEffect } from "react";

function HIndexButton({ name, date }) {
  const [data, setData] = useState(false);

  function OnClickHoldIndex({ name, date }) {
    const DBName = name.concat("_", date);
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
        console.log("table I picked:", data);
        console.log(typeof data);
      })
      .catch((err) => {
        console.log(err);
      })
      .finally(() => {
        console.log(data);
        // setIsLoading(false);
      });
  }

  return (
    <button onClick={() => OnClickHoldIndex({ name, date })}>
      {name} {date}
    </button>
    // alert(name, date);
  );
}

export default HIndexButton;
