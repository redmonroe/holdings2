import { useState, useEffect } from "react";
import {
  XYPlot,
  XAxis,
  YAxis,
  ChartLabel,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries,
  LineSeriesCanvas,
} from "react-vis";

function RatesLinePlot() {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState();
  const [useCanvas, setUseCanvas] = useState("false");
  const content = useCanvas ? "TOGGLE TO SVG" : "TOGGLE TO CANVAS";
  const Line = useCanvas ? LineSeriesCanvas : LineSeries;

  useEffect(() => {
    setIsLoading(true);

    fetch("/rates")
      .then((result) => result.json())
      .then((data) => {
        // setData(data);
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
      <XYPlot width={750} height={750}>
        <LineSeries
          className='first-series'
          data={[
            { x: 1, y: 10 },
            { x: 2, y: 15 },
          ]}
        />
        <LineSeries
          className='first-series'
          data={[
            { x: 3, y: 5 },
            { x: 4, y: 6 },
          ]}
        />
        <HorizontalGridLines />
        <VerticalGridLines />
        <XAxis />
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
        {/* <Line className='second-series' data={data} /> */}
        {/* <Line
          className='third-series'
          curve={"curveMonotoneX"}
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
