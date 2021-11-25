import React, { Fragment } from "react";
import "./App.css";
import { Routes, Route } from "react-router-dom";

import HoldIndex from "./pages/HoldIndex";
import PlotA from "./pages/PlotA";

import MainNavigation from "./components/MainNavigation";

const App = () => {
  return (
    <div>
      <MainNavigation />
      <Routes>
        <Route path='/' exact element={<HoldIndex />} />
        <Route path='/plota' element={<PlotA />} />
        <Route path='/holdindex' element={<HoldIndex />} />
      </Routes>
    </div>
  );
};

export default App;
