import Image from "next/image";

function Content() {
  return (
    <div className="contents">
      <div className="contents-subcont">
        <div className="content-bubble longer">
          <p className="contbubble-title">About Me</p>
          <ul>
            <li>
              I’m currently completing Bachelor of Information Technology.
            </li>
            <li>Ask me anything about computer and cars! Im all in!</li>
          </ul>
        </div>
        <div className="content-bubble shorter ">
          <h2>Title</h2>
          <Image
            src="https://raw.githubusercontent.com/vaxerski/Hyprland/main/assets/header.svg"
            alt="Cool sky picture"
            width={280}
            height={200}
          ></Image>
        </div>
      </div>
      <div className="contents-subcont">
        <div className="content-bubble shorter"> Bubble3 </div>
        <div className="content-bubble longer"> Bubble4 </div>
      </div>
    </div>
  );
}

export default Content;
