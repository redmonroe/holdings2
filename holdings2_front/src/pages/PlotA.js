import ScatterPlot from "../components/ScatterPlot";
import { useLocation } from "react-router-dom";

function PlotA(props) {
  const { state } = useLocation();

  console.log("inside PlotA", state);
  return (
    <div>
      <ScatterPlot incoming_data={state}></ScatterPlot>
    </div>
  );
}

export default PlotA;
