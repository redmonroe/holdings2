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

function RatesLinePlot() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

  useEffect(() => {
    setIsLoading(true);

    fetch("/rates")
      .then((result) => result.json())
      .then((data) => {
        setData(data);
        console.log("rates.js:", data, typeof data);
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

  //   const series = data;
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
      {/* <LineChart
        width={500}
        height={500}
        data={data}
        margin={{
          top: 5,
          right: 30,
          left: 20,
          bottom: 5,
        }}
      > */}
      {/* <XAxis dataKey='date' />
        <YAxis />
        <Tooltip />
        <Legend />
        <Line type='monotone' dataKey='price' stroke='#8884d8' dot={false} />
        <Line type='linear' dataKey='vug:vtv' stroke='#82ca9d' />
      </LineChart> */}
    </div>
  );
}
// const data = [
//   {
//     name: "Page A",
//     uv: 4000,
//     pv: 2400,
//     amt: 2400,
//   },
//   {
//     name: "Page B",
//     uv: 3000,
//     pv: 1398,
//     amt: 2210,
//   },
//   {
//     name: "Page C",
//     uv: 2000,
//     pv: 9800,
//     amt: 2290,
//   },
//   {
//     name: "Page D",
//     uv: 2780,
//     pv: 3908,
//     amt: 2000,
//   },
//   {
//     name: "Page E",
//     uv: 1890,
//     pv: 4800,
//     amt: 2181,
//   },
//   {
//     name: "Page F",
//     uv: 2390,
//     pv: 3800,
//     amt: 2500,
//   },
//   {
//     name: "Page G",
//     uv: 3490,
//     pv: 4300,
//     amt: 2100,
//   },
// ];

export default RatesLinePlot;
