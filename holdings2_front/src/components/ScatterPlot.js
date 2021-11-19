import React, { useState, useEffect } from "react";
import { ScatterChart, Scatter, XAxis, YAxis, CartesianGrid } from "recharts";

function ScatterPlot() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState([]); // set default value to empty array

  useEffect(() => {
    setIsLoading(true);

    fetch("/scatterplot")
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

  //   const test_data = [
  //     { x: 1, y: 23 },
  //     { x: 2, y: 3 },
  //     { x: 3, y: 15 },
  //     { x: 4, y: 35 },
  //     { x: 5, y: 45 },
  //     { x: 6, y: 25 },
  //     { x: 7, y: 17 },
  //     { x: 8, y: 32 },
  //     { x: 9, y: 43 },
  //   ];

  return (
    <div>
      <p>ScatterChart ReChart</p>
      <h1>
        scattercharts will accept a list of dicts directly, does not have the
        React issue rending children from dicts
      </h1>
      <ScatterChart width={400} height={400}>
        <CartesianGrid />
        <XAxis type='number' dataKey='x' />
        <YAxis type='number' dataKey='y' />
        <Scatter data={data} fill='green' />
      </ScatterChart>
    </div>
  );
}

export default ScatterPlot;
