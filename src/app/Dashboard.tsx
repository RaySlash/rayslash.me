import { Borel } from "next/font/google";
import { TfiLocationPin } from "react-icons/tfi";

const borel = Borel({
  weight: "400",
  subsets: ["latin"],
  variable: "--font-borel",
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
      <p className={`${borel.variable} font-sans`}>I am</p>
      <p className={`${borel.variable} font-sans name`}>Steve Mathew Joy</p>
      <p className="location">
        <TfiLocationPin />
        Brisbane, Australia
      </p>
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
      <p className="developer">DEVELOPER</p>
      <p className="rust">RUSTACEAN</p>
      <p className="kernel">LINUX EXPERT</p>
    </div>
  );
}

export default Dashboard;
