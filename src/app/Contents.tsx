function Content() {
  return (
    <div className="contents">
      <div className="contents-subcont">
        <div className="content-bubble longer">
          <div>Title</div>
          <p>
            Lorem ipsum, or lipsum as it is sometimes known, is dummy text used
            in laying out print, graphic or web designs. The passage is
            attributed to an unknown typesetter in the 15th century who is
            thought to have scrambled parts of Cicero&apos;s De Finibus Bonorum
            et
          </p>
        </div>
        <div className="content-bubble shorter "> Bubble2 </div>
      </div>
      <div className="contents-subcont">
        <div className="content-bubble shorter"> Bubble3 </div>
        <div className="content-bubble longer"> Bubble4 </div>
      </div>
    </div>
  );
}

export default Content;
