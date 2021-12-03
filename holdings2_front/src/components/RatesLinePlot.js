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

const series = [
  {
    name: "tlt whatever",
    data: [
      { date: "A", price: 5 },
      { date: "B", price: 10 },
      { date: "C", price: 15 },
    ],
  },
];
//   {
//     name: "Series 2",
//     sample_data: [
//       { category: "B", value: Math.random() },
//       { category: "C", value: Math.random() },
//       { category: "D", value: Math.random() },
//     ],
//   },
//   {
//     name: "Series 3",
//     sample_data: [
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

  return (
    <div>
      <p>Rate-Sensitive</p>
    </div>
  );
}

export default RatesLinePlot;
