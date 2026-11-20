# AIM CLIENT UI — SwiftUI demo project

A standalone UI demo only. It does not connect to or modify Minecraft.

## Included
- `AIMClientUI.xcodeproj` — minimal Xcode project
- `AIM_CLIENT_UI/AimClientApp.swift` — app entry point
- `AIM_CLIENT_UI/ContentView.swift` — toggle, Start and Stop UI
- `Info.plist` — app metadata
- `codemagic.yaml` — cloud workflow for a simulator build

## Cloud build
Upload this folder to a GitHub repository, then connect it to Codemagic and select the `ios-ui-demo` workflow. The included workflow builds a simulator `.app` without signing; it does **not** produce an installable device IPA. To create an IPA for an iPhone, an Apple signing setup and a device/archive build are required.
