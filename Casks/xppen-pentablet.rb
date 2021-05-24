# frozen_string_literal: true

cask "xppen-pentablet" do
  version "3.1.1_210507"
  sha256 "335c01a6483f259a45b330a2a6e545f77550682326bd82d65bfb0c5ea512e104"

  url "https://www.xp-pen.com/download/file/id/1968"
  name "XP-Pen PenTablet"
  desc "Driver and configuration app for XP-Pen graphic tablets"
  homepage "https://www.xp-pen.com/"

  container nested: "XP-PENMac_#{version}/XP-PENMac_#{version}.dmg"

  app "XP-PenPenTabletPro/PenTablet.app"
end
