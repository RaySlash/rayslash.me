import Navbar from "../navbar";
import Footer from "../footer";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "Projects",
};

function Projects() {
  return (
    <div>
      <Navbar />
      <Footer />
    </div>
  );
}

export default Projects;
