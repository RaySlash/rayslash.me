import type { Metadata } from "next";
import { Atkinson_Hyperlegible } from "next/font/google";
import "./globals.css";

export const metadata: Metadata = {
  title: "Steve Mathew Joy",
  description: "Personal Website",
};

const atkinson = Atkinson_Hyperlegible({
  weight: "400",
  subsets: ["latin"],
  variable: "--font-atkinson",
});

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`${atkinson.className}`}>{children}</body>
    </html>
  );
}
