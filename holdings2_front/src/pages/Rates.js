import RatesLinePlot from "../components/RatesLinePlot";

function Rates() {
  return (
    <div>
      <h1>rates</h1>;<RatesLinePlot></RatesLinePlot>
    </div>
  );
}

export default Rates;

// import ScatterPlot from "../components/ScatterPlot";
// import { useLocation } from "react-router-dom";

// function PlotA(props) {
//   const { state } = useLocation();

//   return (
//     <div>
//       <ScatterPlot incoming_data={state.db}></ScatterPlot>
//     </div>
//   );
// }

// export default PlotA;
