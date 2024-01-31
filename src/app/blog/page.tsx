import Navbar from "../navbar";
import Footer from "../footer";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "Blog",
};

function Blog() {
  return (
    <div>
      <Navbar />
      <Footer />
    </div>
  );
}

export default Blog;
