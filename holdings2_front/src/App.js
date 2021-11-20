import React, { Fragment } from "react";
import "./App.css";
import { Routes, Route } from "react-router-dom";

import HoldIndex from "./pages/HoldIndex";
import PlotA from "./pages/PlotA";
// import ScatterPlot from "./components/ScatterPlot";

const App = () => {
  // Sample data
  return (
    <div>
      <Fragment>
        <Routes>
          <Route path='/' exact element={<HoldIndex />} />
          <Route path='/plota' element={<PlotA />} />
          <Route path='/holdindex' element={<HoldIndex />} />
        </Routes>
      </Fragment>
    </div>
  );
};

export default App;
