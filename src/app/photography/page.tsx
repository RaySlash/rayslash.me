import Navbar from "../navbar";
import Footer from "../footer";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "Photography",
};

function Photography() {
  return (
    <div>
      <Navbar />
      <Footer />
    </div>
  );
}

export default Photography;
