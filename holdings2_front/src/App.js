import React, { Fragment } from "react";
import "./App.css";
import { Routes, Route } from "react-router-dom";
import ScatterPlot from "./components/ScatterPlot";

import HoldIndex from "./pages/HoldIndex";
// import ScatterPlot from "./components/ScatterPlot";

const App = () => {
  // Sample data
  return (
    <div>
      <Fragment>
        {/* <HoldIndex></HoldIndex> */}
        <Routes>
          <Route path='/' exact element={<HoldIndex />} />
        </Routes>
      </Fragment>
    </div>
  );
};

export default App;
