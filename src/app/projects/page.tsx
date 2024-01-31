import Navbar from "../navbar";
import Footer from "../footer";
import ProjectContents from "./contents";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "Projects",
};

function Projects() {
  return (
    <div>
      <Navbar />
      <ProjectContents />
      <Footer />
    </div>
  );
}

export default Projects;
