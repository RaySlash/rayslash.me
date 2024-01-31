import type { Metadata } from "next";
import { SpeedInsights } from "@vercel/speed-insights/next";
import { Atkinson_Hyperlegible, Borel } from "next/font/google";
import "./globals.css";

const borel = Borel({
  weight: "400",
  subsets: ["latin"],
  variable: "--font-borel",
  display: "swap",
});

const atkinson = Atkinson_Hyperlegible({
  weight: "400",
  subsets: ["latin"],
  variable: "--font-atkinson",
  display: "swap",
});

export const metadata: Metadata = {
  title: "Home | Steve Mathew Joy",
  description: "A Personal Website",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`${atkinson.variable} ${atkinson.className} ${borel.variable}`}
      >
        {children}
        <SpeedInsights />
      </body>
    </html>
  );
}
