import { FiGithub, FiMail } from "react-icons/fi";

function Navbar() {
  return (
    <div className="navitems">
      <LeftNavContainer />
      <RightNavContainer />
    </div>
  );
}

function LeftNavContainer() {
  return (
    <div className="nav-left">
      <p>Home</p> <p>Projects</p> <p>Photography</p> <p>Blog</p>
    </div>
  );
}

function RightNavContainer() {
  return (
    <div className="nav-right">
      <a href="https://github.com/rayslash">
        <FiGithub />
      </a>
      <a href="mailto:stevemathewjoy@tutanota.com">
        <FiMail />
      </a>
    </div>
  );
}

export default Navbar;
