import ScatterPlot from "../components/ScatterPlot";
import { useLocation } from "react-router-dom";

function PlotA(props) {
  const { state } = useLocation();

  return (
    <div>
      <ScatterPlot incoming_data={state.db}></ScatterPlot>
    </div>
  );
}

export default PlotA;
