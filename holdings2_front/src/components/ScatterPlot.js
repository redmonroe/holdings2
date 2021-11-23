import React, { useState, useEffect } from "react";
import {
  ScatterChart,
  Scatter,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  LabelList,
} from "recharts";

function ScatterPlot({ incoming_data }) {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();
  // const [incomingData, setIncomingData] = useState();

  // setIncomingData(incoming_data);

  useEffect(() => {
    setIsLoading(true);

    fetch("/lookup_index", {
      method: "POST",
      body: JSON.stringify(incoming_data),
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
        setIsLoading(false);
        console.log("finally:", data);
      });
  }, []);

  if (isLoading) {
    return (
      <section>
        <p>Loading...</p>
      </section>
    );
  }

  function Transform(data) {
    console.log("Transform:", data);
    const dataArray = [];
    data.forEach((stock) => {
      let newObj = {};
      newObj["x"] = stock["gain_factor"];
      newObj["y"] = stock["off_hi"];
      newObj["z"] = stock["name"];
      dataArray.push(newObj);
    });
    console.log("Transform:", dataArray);
    return dataArray;
  }

  const data2 = Transform(data);
  console.log(data2);

  return (
    <div>
      <p>ScatterChart {incoming_data}</p>
      <ScatterChart width={800} height={600}>
        <CartesianGrid />
        <XAxis type='number' dataKey='x' domain={[0, 4]} />
        <YAxis type='number' dataKey='y' domain={[-100, 0]} />
        <Scatter data={data2} fill='green'>
          <LabelList dataKey='z' />
        </Scatter>
      </ScatterChart>
    </div>
  );
}

export default ScatterPlot;
