import { Link } from "react-router-dom";
import classes from "./MainNavigation.module.css";

function MainNavigation() {
  return (
    <header className={classes.header}>
      <div className={classes.logo}>holdings2</div>
      <nav>
        <ul>
          <li>
            <Link to='/'>home</Link>
          </li>
          <li>
            <Link to='/weekly'>week</Link>
          </li>
          <li>
            <Link to='/holdindex'>index</Link>
          </li>
          <li>
            <Link to='/rates'>rates</Link>
          </li>
        </ul>
      </nav>
    </header>
  );
}

export default MainNavigation;
