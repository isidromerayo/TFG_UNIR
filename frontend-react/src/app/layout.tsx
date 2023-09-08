import './globals.css'
import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import LayoutComponent from '../../components/LayoutComponent'
import Script from 'next/script'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'Frontend - React + NEXT.js',
  description: 'Generated by create next app Dummy',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <head>
      </head>
      <body>
        <LayoutComponent>
          {children}
        </LayoutComponent>
        <Script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js" strategy="beforeInteractive"/>
        <Script src="assets/js/main.js" strategy="beforeInteractive" />
      </body>
    </html>
  )
}
