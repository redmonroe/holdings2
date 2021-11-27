import React, { useState, useEffect } from "react";
import {
  ScatterChart,
  Scatter,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  LabelList,
  ResponsiveContainer,
} from "recharts";

function ScatterPlot({ incoming_data }) {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

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
        console.log("scatterPlot.js:", data, typeof data);
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

  function Transform(data) {
    const dataArray = [];
    data.forEach((stock) => {
      let newObj = {};
      newObj["x"] = stock["gain_factor"];
      newObj["y"] = stock["off_hi"];
      newObj["z"] = stock["name"];
      dataArray.push(newObj);
    }); // console.log("Transform:", dataArray);
    return dataArray;
  }

  const data2 = Transform(data);

  return (
    <div>
      <p>ScatterChart {incoming_data}</p>
      {/* <ResponsiveContainer> */}
      <ScatterChart width={3000} height={800}>
        <CartesianGrid />
        <XAxis type='number' dataKey='x' domain={[1, 4]} />
        <YAxis type='number' dataKey='y' domain={[-100, 0]} />
        <Tooltip cursor={"4"} />
        <Scatter data={data2} fill='blue'>
          <LabelList dataKey='z' position='bottom' />
        </Scatter>
      </ScatterChart>
      {/* </ResponsiveContainer> */}
    </div>
  );
}

export default ScatterPlot;
