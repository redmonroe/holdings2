import React, { useState, useEffect } from "react";

import HIndexButton from "../components/HIndexButton";

function HoldIndex() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

  useEffect(() => {
    setIsLoading(true);

    fetch("/holdindex")
      .then((result) => result.json())
      .then((data) => {
        setData(data);
        // console.log(data);
        // console.log(typeof data);
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

  const tableNameArray = data.map((resItem) => (
    <li key={resItem.id}>
      <HIndexButton date={resItem.date.toString()} name={resItem.content_note}>
        {resItem.date.toString()} | {resItem.content_note} |
      </HIndexButton>
    </li>
  ));

  return (
    <div>
      <h2>index of contents</h2>
      <ul>{tableNameArray}</ul>
    </div>
  );
}

export default HoldIndex;
