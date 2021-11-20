import React, { useState, useEffect } from "react";

function HoldIndex() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState([]); // set default value to empty array

  useEffect(() => {
    setIsLoading(true);

    fetch("/holdindex")
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

  const tableNameArray = data.map((dispItem) => <li>{dispItem}</li>);

  return <ul>{tableNameArray}</ul>;
}

export default HoldIndex;
