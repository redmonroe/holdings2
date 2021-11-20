function SimpleMap({ holdObject }) {
  const holdArray = holdObject.result.map((line) => (
    <div key={line}>
      <ul>{line}</ul>
    </div>
  ));

  return <ul>{holdArray}</ul>;
}

export default SimpleMap;
