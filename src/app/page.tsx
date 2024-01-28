// Personal Website
// Major pages:
// 	Home
// 	Projects
// 	blog
// 	Photography
// 	About += Contact
//
// Main components:
// 	Navbar(global comp and partially static)
// 	Headbar(global dynamic titlebar/headbar)
// 	Body(dyn comp)
// 	Footer(fully static component)

import Footer from "./Footer";
import Navbar from "./Navbar";
import Dashboard from "./Dashboard";
import { Atkinson_Hyperlegible } from "next/font/google";

const atkinson = Atkinson_Hyperlegible({
  weight: "400",
  subsets: ["latin"],
  variable: "--font-atkinson",
});
function App() {
  return (
    <div className={`${atkinson.variable} font-sans`}>
      <Home />
    </div>
  );
}

function Home() {
  return (
    <div className="navbar">
      <Navbar />
      <Dashboard />
      <Footer />
    </div>
  );
}

export default App;
