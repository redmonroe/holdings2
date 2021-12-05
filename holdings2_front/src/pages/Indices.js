import { useState, useEffect } from "react";

function Indices() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

  useEffect(() => {
    setIsLoading(true);

    fetch("/indices")
      .then((result) => result.json())
      .then((data) => {
        setData(data);
        console.log("indices.js:", data, typeof data);
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

  const dataArray = data["data"].map((d) => (
    <li>
      {d.name} *** {d.risk.toString()}
    </li>
  ));

  return (
    <div>
      <h1>indices</h1>
      <ul>{dataArray}</ul>
      <p>score: {data["score"]}</p>
    </div>
  );
}

export default Indices;
