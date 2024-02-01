import { TfiLocationPin } from "react-icons/tfi";
import Link from "next/link";

function Dashboard() {
  return (
    <div className="dashboard">
      <Header />
    </div>
  );
}

function Header() {
  return (
    <div className="dashboarditems">
      <p className="font-borel name-sub">&#x1F44B; Hi, I am</p>
      <p className={`font-borel name`}>Steve Mathew Joy</p>
      <Link
        href="https://www.openstreetmap.org/#map=13/-27.4883/153.0072"
        className="location"
      >
        <TfiLocationPin />
        Brisbane, Australia
      </Link>
      <p>
        Final-year student{" "}
        <Link className="university" href="https://federation.edu.au">
          @Federation-University, Australia
        </Link>
      </p>
      <HeaderBubbles />
    </div>
  );
}

function HeaderBubbles() {
  return (
    <div className="dashboarditems dashboardbubbles">
      <p className="developer">Developer</p>
      <p className="rust">Rustacean</p>
      <p className="kernel">Linux Dev</p>
    </div>
  );
}

export default Dashboard;
