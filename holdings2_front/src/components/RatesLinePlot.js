import { useState, useEffect } from "react";
import {
  XYPlot,
  XAxis,
  YAxis,
  ChartLabel,
  HorizontalGridLines,
  VerticalGridLines,
  LineMarkSeries,
  LineSeries,
  LineSeriesCanvas,
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

  // function Transform() {

  // }

  // Transform();

  return (
    <div>
      <p>Rate-Sensitive</p>
      <XYPlot width={500} height={500} xType='ordinal'>
        <LineMarkSeries
          className='first-series'
          data={data[0]}
          lineStyle={{ stroke: "#e0e0e0" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='second-series'
          data={data[1]}
          lineStyle={{ stroke: "blue" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <LineMarkSeries
          className='third-series'
          data={data[2]}
          lineStyle={{ stroke: "blue" }}
          markStyle={{ stroke: "none" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />
        <HorizontalGridLines />
        <VerticalGridLines />
        <XAxis attr='x' attrAxis='y' orientation='bottom' tickLabelAngle={90} />
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
            transform: "rotate(-90)",
            textAnchor: "end",
          }}
        />
      </XYPlot>
    </div>
  );
}

export default RatesLinePlot;
