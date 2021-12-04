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
  // const [useCanvas, setUseCanvas] = useState(true);
  // const content = useCanvas ? "TOGGLE TO SVG" : "TOGGLE TO CANVAS";
  // const Line = useCanvas ? LineSeriesCanvas : LineSeries;

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
      {/* <p>Rate-Sensitive</p> */}
      <XYPlot width={800} height={800} xType='ordinal'>
        <LineMarkSeries
          className='first-series'
          data={data}
          // curve={"curveMonotoneX"}
          lineStyle={{ stroke: "#e0e0e0" }}
          markStyle={{ stroke: "#6dc6c1" }}
          // style={{ strokeWidth: "2px" }}
          strokeStyle='solid'
          style={{ fill: "none" }}
        />

        {/* <LineSeries
          className='second-series'
          data={[
            { x: 3, y: 5 },
            { x: 4, y: 6 },
          ]} */}
        <HorizontalGridLines />
        <VerticalGridLines />
        <XAxis
          attr='x'
          attrAxis='y'
          orientation='bottom'
          // tickFormat={function tickFormat(d) {
          //   return;
          //   moment(d).format("YY MM");
          // }}
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
          // style={{
          //   transform: "rotate(-90)",
          //   textAnchor: "end",
          // }}
        />
        {/* <Line className='second-series' data={data} /> */}
        {/* <Line
          className='third-series'
          data={[
            { x: 1, y: 10 },
            { x: 2, y: 4 },
            { x: 3, y: 2 },
            { x: 4, y: 15 },
          ]}
          strokeDasharray={useCanvas ? [7, 3] : "7, 3"}
        />
        <Line
          className='fourth-series'
          curve={"curveMonotoneX"}
          style={{
            // note that this can not be translated to the canvas version
            strokeDasharray: "2 2",
          }}
          data={[
            { x: 1, y: 7 },
            { x: 2, y: 11 },
            { x: 3, y: 9 },
            { x: 4, y: 2 },
          ]} */}
        {/* /> */}
      </XYPlot>
    </div>
  );
}

export default RatesLinePlot;
