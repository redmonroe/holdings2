import { Link } from "react-router-dom";
import classes from "./MainNavigation.module.css";

function MainNavigation() {
  return (
    <header className={classes.header}>
      <div className={classes.logo}>holdings2</div>
      <nav>
        <ul>
          <li>
            <Link to='/'>hello world</Link>
          </li>
          <li>
            <Link to='/holdindex'>index</Link>
          </li>
          {/* <li>
            <Link to='/networth'>Net Worth</Link>
          </li>
          <li>
            <Link to='/accounts'>Accounts</Link>
          </li>
          <li>
            <Link to='/new_user'>Add User</Link>
          </li>
          <li>
            <Link to='/transactions'>Transactions</Link>
          </li> */}
        </ul>
      </nav>
    </header>
  );
}

export default MainNavigation;
