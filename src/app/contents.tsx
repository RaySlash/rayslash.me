"use client";

import Image from "next/image";
import Link from "next/link";

function Contents() {
  return (
    <div className="contents">
      <div className="contents-subcont">
        <div className="content-bubble bubble1 longer">
          <h2 className="onlytext">About Me</h2>
          <ul>
            <li>
              I’m currently completing Bachelor of Information Technology.
            </li>
            <li>
              Ask me anything about computer and cars! Im all in to learn about
              it.
            </li>
            <li>
              I would love to have an opportunity to be part of a team. If you
              find I&apos;m fit for a role you see, contact me through mail.
            </li>
          </ul>
          <Link
            className="dl-cv"
            href="https://github.com/RaySlash/RaySlash/blob/main/Resume_SteveMJ.pdf"
          >
            Download CV/Resume
          </Link>
        </div>
        <div className="content-bubble shorter bubble2">
          <h2>My Personal Setup</h2>
          <ul>
            <li>
              <Image
                className="ss-grim"
                src="https://raw.githubusercontent.com/RaySlash/nixos-config/master/ss_grim.png"
                alt="My home screenshot"
                width={280}
                height={200}
              ></Image>
            </li>
            <li>
              <Link href="https://github.com/rayslash/nixos-config">
                See my Config Repository
              </Link>
            </li>
          </ul>
        </div>
      </div>
      <div className="contents-subcont">
        <div className="content-bubble shorter bubble3">
          <h2>Languages / Frameworks</h2>
          <ul>
            <li>C</li>
            <li>C#</li>
            <li>Rust</li>
            <li>JavaScript</li>
            <li>TypeScript</li>
            <li>Python</li>
            <li>ReactJS</li>
            <li>Nix</li>
            <li>Linux Kernel</li>
          </ul>
        </div>
        <div className="content-bubble longer bubble4">
          <h2>My Recent Projects and Stats</h2>
          <ul>
            <li>
              <Image
                className="git-stats"
                src="https://raw.githubusercontent.com/rayslash/github-stats/master/generated/languages.svg"
                alt="Github Stats"
                width={360}
                height={210}
              ></Image>
            </li>
            <li>
              <Image
                className="git-stats"
                src="https://raw.githubusercontent.com/rayslash/github-stats/master/generated/overview.svg"
                alt="Github Stats"
                width={360}
                height={210}
              ></Image>
            </li>
          </ul>{" "}
        </div>
      </div>
    </div>
  );
}

export default Contents;
