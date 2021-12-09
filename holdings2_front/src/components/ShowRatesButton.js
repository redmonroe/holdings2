import { useNavigate } from "react-router-dom";

function ShowRatesButton() {
  const navigate = useNavigate();
  function ClickHandler() {
    navigate("/rates");
  }

  return <button onClick={() => ClickHandler()}>show rates</button>;
}

export default ShowRatesButton;
