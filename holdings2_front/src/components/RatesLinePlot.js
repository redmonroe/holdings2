import { useState, useEffect } from "react";
import {
  XYPlot,
  XAxis,
  YAxis,
  ChartLabel,
  HorizontalGridLines,
  VerticalGridLines,
  LineMarkSeries,
} from "react-vis";

function RatesLinePlot() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();

  useEffect(() => {
    setIsLoading(true);

    fetch("/rates")
      .then((result) => result.json())
      .then((data) => {
        setData(data);
        console.log("rates.js:", data[4], typeof data);
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

  //  [
  //    {
  //      x: Date.parse("05/05/2019"),
  //      y: 0,
  //    },
  //    {
  //      x: Date.parse("05/12/2019"),
  //      y: 12,
  //    },
  //    {
  //      x: Date.parse("05/13/2019"),
  //      y: 16,
  //    },
  //  ];

  return (
    <div>
      <p>Rate-Sensitive</p>
      <XYPlot width={600} height={600} xType='ordinal'>
        <LineMarkSeries
          className='first-series'
          data={data[0]["price_tlt"]}
          curve={"curveMonotoneX"}
          lineStyle={{ stroke: "orange" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='third-series'
          data={data[1]["price_gld"]}
          curve={"curveMonotoneX"}
          lineStyle={{ stroke: "red" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='fourth-series'
          data={data[2]["price_vug_to_vtv"]}
          curve={"curveMonotoneX"}
          lineStyle={{ stroke: "purple" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='fifth-series'
          data={data[3]["price_spy_to_iwm"]}
          curve={"curveMonotoneX"}
          lineStyle={{ stroke: "green" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='sixth-series'
          data={data[4]["price_spy_to_xle"]}
          curve={"curveMonotoneX"}
          lineStyle={{ stroke: "black" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='sixth-series'
          data={data[5]["price_spy_to_kre"]}
          lineStyle={{ stroke: "green" }}
          // markStyle={{ stroke: "none" }}
          markStyle={{ stroke: "black" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <HorizontalGridLines />
        <VerticalGridLines />
        <XAxis
          tickSize={50}
          tickTotal={5}
          tickFormat={(t, i) => {
            if ((i + 2) % 5 === 0) {
              return t.split(",")[0];
            } else {
              return;
            }
          }}
          attr='x'
          attrAxis='y'
          orientation='bottom'
          tickLabelAngle={90}
        />
        <YAxis />
        <ChartLabel
          text='date'
          className='x-label'
          includeMargin={false}
          xPercent={0.025}
          yPercent={1.01}
        />
        <ChartLabel
          text='price'
          className='alt-y-label'
          includeMargin={false}
          xPercent={0.06}
          yPercent={0.06}
          style={{
            transform: "rotate(90)",
            textAnchor: "end",
          }}
        />
      </XYPlot>
    </div>
  );
}

export default RatesLinePlot;
