"use client";

import { FiGithub, FiMail } from "react-icons/fi";
import { usePathname } from "next/navigation";
import Link from "next/link";

function Navbar() {
  return (
    <div className="navitems">
      <LeftNavContainer />
      <RightNavContainer />
    </div>
  );
}

function LeftNavContainer() {
  const pathname = usePathname();

  return (
    <div className="nav-left">
      <Link className={`link ${pathname === "/" ? "active" : ""}`} href="/">
        Home
      </Link>
      <Link
        className={`link ${pathname === "/projects" ? "active" : ""}`}
        href="/projects"
      >
        Projects
      </Link>
      <Link
        className={`link ${pathname === "/photography" ? "active" : ""}`}
        href="/photography"
      >
        Photography
      </Link>
      <Link
        className={`link ${pathname === "/blog" ? "active" : ""}`}
        href="/blog"
      >
        Blog
      </Link>
    </div>
  );
}

function RightNavContainer() {
  return (
    <div className="nav-right">
      <Link href="https://github.com/rayslash">
        <FiGithub />
      </Link>
      <Link href="mailto:stevemathewjoy@tutanota.com">
        <FiMail />
      </Link>
    </div>
  );
}

export default Navbar;
