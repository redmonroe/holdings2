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
      <LineChart width={500} height={300} data={data}>
        <CartesianGrid strokeDasharray='3 3' />
        <XAxis dataKey='date' />
        {/* allowDuplicatedCategory={false} */}
        <YAxis dataKey='price' />
        <Tooltip />
        <Legend />
        {data.map((s) => (
          <Line
            dataKey='price'
            data={s.data}
            name={s.name}
            key={s.name}
            dot={false}
          />
        ))}
      </LineChart>
    </div>
  );
}

export default RatesLinePlot;
