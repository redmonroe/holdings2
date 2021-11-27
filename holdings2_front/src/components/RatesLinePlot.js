import React, { useState, useEffect } from "react";
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from "recharts";

// const series = [
//   {
//     name: "Series 1",
//     data: [
//       { category: "A", value: Math.random() },
//       { category: "B", value: Math.random() },
//       { category: "C", value: Math.random() },
//     ],
//   },
//   {
//     name: "Series 2",
//     data: [
//       { category: "B", value: Math.random() },
//       { category: "C", value: Math.random() },
//       { category: "D", value: Math.random() },
//     ],
//   },
//   {
//     name: "Series 3",
//     data: [
//       { category: "C", value: Math.random() },
//       { category: "D", value: Math.random() },
//       { category: "E", value: Math.random() },
//     ],
//   },
// ];

function RatesLinePlot() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

  useEffect(() => {
    setIsLoading(true);

    fetch("/rates")
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

  //   function Transform(data) {
  //     const dataArray = [];
  //     data.forEach((stock) => {
  //       let newObj = {};
  //       newObj["x"] = stock["gain_factor"];
  //       newObj["y"] = stock["off_hi"];
  //       newObj["z"] = stock["name"];
  //       dataArray.push(newObj);
  //     });
  //     return dataArray;
  //   }

  //   const data2 = Transform(data);

  return (
    <div>
      <p>Rate-Sensitive</p>
      {/* <LineChart width={1000} height={1000}>
        <CartesianGrid strokeDasharray='3 3' />
        <XAxis
          dataKey='category'
          type='category'
          allowDuplicatedCategory={false}
        />
        <YAxis dataKey='value' />
        <Tooltip />
        <Legend />
        {series.map((s) => (
          <Line dataKey='value' data={s.data} name={s.name} key={s.name} />
        ))}
      </LineChart> */}
    </div>
  );
}

export default RatesLinePlot;
