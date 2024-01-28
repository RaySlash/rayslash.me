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

function App() {
	return (
		<div>
			<Home />
		</div>
	);
}

function Home() {
	return (
		<div className="navbar">
			<body>
				<Navbar />
			</body>
			<Footer />
		</div>
	);
}

export default App;
