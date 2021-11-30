import { useState } from "react";

function BackupButton() {
  const [data, setData] = useState("");

  function ClickHandler() {
    fetch("/backup")
      .then((result) => result.json())
      .then((data) => {
        setData(data);
        console.log("backup:", data, typeof data);
      })
      .catch((err) => {
        console.log(err);
      });
  }
  return (
    <button
      onClick={() =>
        ClickHandler(alert(`successful backup at: ${data.toString()}`))
      }
    >
      backup
    </button>
  );
}

export default BackupButton;
