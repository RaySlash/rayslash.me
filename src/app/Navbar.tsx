import { FiGithub, FiMail } from "react-icons/fi";
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
	return (
		<div className="nav-left">
			<Link href="/">Home</Link>
			<Link href="/projects">Projects</Link>
			<Link href="/photography">Photography</Link>
			<Link href="/blog">Blog</Link>
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
