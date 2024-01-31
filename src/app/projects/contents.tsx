import Link from "next/link";

function ProjectContents() {
  return (
    <div className="projectcontents-container">
      <div className="proj-subcont">
        <Link
          className="project-title"
          href="https://github.com/rayslash/abootpatch"
        >
          hid-tmff2 | Nixpkgs
        </Link>
        <p>
          Nix Packages collection & NixOS. Add kernel package
          &apos;hidtmff2&apos; in nixpkgs. Source:{" "}
          <Link href="https://github.com/NixOS/nixpkgs/pull/257386">
            https://github.com/NixOS/nixpkgs/pull/257386
          </Link>
        </p>
      </div>
      <div className="proj-subcont">
        <Link
          className="project-title"
          href="https://github.com/rayslash/abootpatch"
        >
          Abootpatch
        </Link>
        <p>
          Pure shell script to obtain stock device ROM zip files and flash using
          tools such as fastboot, adb, wget etc
        </p>
      </div>
      <div className="proj-subcont">
        <Link
          className="project-title"
          href="https://github.com/rayslash/kernel_exynos990-common"
        >
          Andorid Custom ROM Kernel development
        </Link>
        <p>
          Key responsibilities included creation of custom ROM image for Xiaomi
          Redmi 5A (riva) in format of ‘*.img’ files that can be flashed to
          devices. Maintain the repositories and periodic pull requests to
          official repositories. Also, Automate building processes using shell
          scipts
        </p>
      </div>
      <div className="proj-subcont">
        <Link className="project-title" href="https://github.com/rayslash/oran">
          Text Editor
        </Link>
        <p>
          A text editor built in Rust to get a solid understanding of writing
          CLI programs and the stratergies to capture and input text in a large
          scale
        </p>
      </div>
      <div className="proj-subcont">
        <Link
          className="project-title"
          href="https://github.com/rayslash/rayslash.me"
        >
          Personal Website
        </Link>
        <p>
          This is a Next.JS project built using typescript, tailwind css, React
          and Bun. This is the source code of the wesite you are currently
          viewing.
        </p>
      </div>
    </div>
  );
}

export default ProjectContents;
