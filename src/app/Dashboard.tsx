import { Borel } from "next/font/google";
import { TfiLocationPin } from "react-icons/tfi";

const borel = Borel({
  weight: "400",
  subsets: ["latin"],
});

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
      <p className={`${borel.className}`}>I am</p>
      <p className={`${borel.className} name`}>Steve Mathew Joy</p>
      <a
        href="https://www.openstreetmap.org/#map=13/-27.4883/153.0072"
        className="location"
      >
        <TfiLocationPin />
        Brisbane, Australia
      </a>
      <p>
        Final-year student{" "}
        <a className="university" href="https://federation.edu.au">
          @Federation-University, Australia
        </a>
      </p>
      <p>Tell me anything about computing and cars! Im IN!</p>
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
