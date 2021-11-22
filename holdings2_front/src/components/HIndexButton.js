import { useNavigate } from "react-router-dom";

function HIndexButton({ name, date }) {
  const navigate = useNavigate();

  function ClickHandler({ name, date }) {
    const DBName = name.concat("_", date);
    navigate("/plota", {
      state: { db: DBName },
    });
  }

  return (
    <button onClick={() => ClickHandler({ name, date })}>
      {name} {date}
    </button>
  );
}

export default HIndexButton;
