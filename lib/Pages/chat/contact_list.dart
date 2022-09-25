const List contacts = [
  // {"icon": "Cisco-android-app/assets/images/contact1.jpg"},
  // {"icon": "Cisco-android-app/assets/images/contact2.jpg"},
  // {"icon": "Cisco-android-app/assets/images/contact3.jpg"},
  // {"icon": "Cisco-android-app/assets/images/contact4.jpg"},
  // {"icon": "Cisco-android-app/assets/images/contact5.jpg"},
  // {"icon": "Cisco-android-app/assets/images/contact6.jpg"},
  // {"icon": "Cisco-android-app/assets/images/contact7.jpg"}
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/27d6/5b50/6e347554649ee3358dd6cd64dfa9c403?Expires=1664755200&Signature=bpggEduYEhwNue17muJ2sz7E3DpSENYGs7z09LaIAYMsIdelEXoBW9vnnq8vCzUP6zFpA~ewAVhjqMbWj5odIyYuMbCcffjNOHO4i5QMLxWrwN~I6W1HJLmcT3SBXKO8FgMj2yHO7x0eQ7rPSiORyt~0wHmCWiv57BrCo86JX4enIRC6vNaDwWxBatWA~T1KLh1RtB98B9u4O0jgHXWO~WOPkqv7ol~9pRVJsQUmKJ6wjuY09HdcC-0mKlDIUy4Lw4vWHy6Rb8FmGkx-CtsZMqFdbBw0bcBTXvGP5ghaj9IRWN4aBPnDpFEYGYxzpcYkq9lx-BusAZk723LF93BzQQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/0e0e/1769/5c59061c16b0fd330b2c797d70c6758c?Expires=1664755200&Signature=W1djlOVr0vTDyCIAmnRIz4P1riAL8ctAYSql6JK1kuhn3u7YSX6nSjSyFS4bPaSTaTRP-O9UOlbR2-Ztcj7fMR7YpDUMRPbs9dd89WyjTLlxkLqiQX8PRIl4eC6Pp-ufBx5qpkUuy6RQ14IDnzNsJTtOukleIIQGWIi4kxeAyEgRR~l7i0uZ0QzeQ15ch6b6qjMfnABAKhd-pXh0TtJw45LV3XOr~9o-BUPdAIUZassH5GUrXPBWgG01fd0LRqWQNn5y4oS-oYFz4TPCdc6FVrULWRDddG62c8hXS0rfK1XSRsYOD-oXJtze5zpuftYHlwUaJasRU4CG7f-wNKSdHQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/8669/1cae/bda516b41b4fe21c68822ac3443e1157?Expires=1664755200&Signature=aAO99RYnzs6oniCpUOxkBFiRpjXKV3fty3AC3g595VSPTHmsDOXL6otepYkgvkzhPhv~-ypfPWbZ--zGgoByzteWrBCRm1zLgX-DoUeqt0PMPeo5S9C8Wvz7y7gs5YgBL76ZXCvLPJ9ONNDlNPveVPjeFda4YOQ7nyPRVHTAtG4bQhsdKT2fC40zPDKhm56VAdkRKiYeAvWGYWZjF2vLhmu7oSfYzleO7c0J2G-Mi965tJZwmJa3hoXsssPZDbpKlzAhI5O4qAo4UWf44136iLSjTMPIx~RmVlRWTbWDziU6gl17yW80WmYEbGyxED2G4nbRL2sHCqGNXWorHaX9qg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/c1e0/9fa6/cfadff4e86d2325aa38a32d7ab48643c?Expires=1664755200&Signature=HEeIzyWXWDW6DQ0s7uu-DXO~vvFeVKWxfmw8Eq4luPCdi-YeCwEcqZHTRkvU77sK9-tQCMKSw-VmUduuzPjkP8vdD8asXMBqX8Xf~G98NMbGAIHeBJS-v0FC49R-X6IPh46YOcI64F3nUPTVBXbXxm4ssMXNOA1i3dRNsys9-Fzg1ixlHsM4LBGkk1p2vxMu5cY5aAxA5iY4OQ~H1CdCOlJogKq3J9cbMFYRg8lNMWCl6AQ1I-gYtttzsFrGt8EHEuQGSEgP1fCNWuPiSE9E9e5nuqXbh-mGZoBmuhAMdqysflc7-jlQ1FOnuAVX4oW0dyX2ZGzaYf1XByeBrcHvbg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/078f/18a0/c885b08f24478a0f602c140ee19a8f42?Expires=1664755200&Signature=SoR53Lz9kbaev-0K0rPQkcXMf4LU51kpLQwrK~UGK6M2Vx9xmUGjJ13HJaR3vHKeA~-cBctbiqRgqkIySAyiF9je9VjDYf7sURleqIOuHuD5aXyrpnHsLmvGNvK2yNLZ05DxWsAup5nhYa37TDO9Sn~kw5x34MZsfGYpZhSvBR14Lbdi9~OkCbl32Vlu-S5FQ0GdrXNKSxPloRV7EBUpyPxQCYMCVDD1gMsfq2~ZmB7AtsiSXjk0gBTocD4HYpCXnuc-zl3DGZbFKSTFgdCOnxdZvKJrbIZ8bQ-5CHzJaKTYafrXTNh9xkTKctOP-LLFBW05on8Ypvt1lOQqeO-HiQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/4a2d/94c3/ae609f5d52aced36636ac580385b1ad5?Expires=1664755200&Signature=BnKJY4KzVGzZ-59UVnabKMYYAhAsLAKXX0bIBi-kEOTlknl3LhBjFG23JMoL9bCMYRjYn4rwELMsoEbpkQOow0ruJZ2Gy~cEWJ-AAPR9tEXiK7QNdSr0V1ius8NTk4KcIghtUYZ63X6VxYCeQUSN4HGIQ-1dobuy9PM8SEJX~9qcBBGcrywVcBhLcHHb6IjKNdk7SHC7ELxDlD9TLIL3yylbDQLyuvX0R8JLqnDigmoqA-4zP2EaxtzpKjLzKTOVOeawQi3hwb2hQHSJH9lbK-OxBntGIOZKi~mFWMiys7N7SbQNsuiMhc1gD8DG0d~dJR-U4sO4UkNjMW5IKXy2GQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
  {
    "icon":
        "https://s3-alpha-sig.figma.com/img/1811/23c3/6056fb585be5cf80c84cadb4db412f15?Expires=1664755200&Signature=eUvA1I97VPtLoEJjmqbKQQhVOo4U~BX0h6eOSSpKQGVqyVenRjdaxeQkwUGNg7zLyZQf1oTpKhF-C31pjTfEe6ZtKIgNEld7YAJDXoC~n68NOKqm1SUpDOQwnidOQY6dvm9Zo-fAdDbSAZ~SyCnHp93K3muDavnoRu67X-gZX8iFrSuYQRxXWq6cofK7i18TF1N2rtAzMvJftJD55aVMgYWihwOr9qG9ex5hbMYMpRwI3XrOJPcbO4qGPUyO-tD1IxzllmQo6Ta53lG17Ig7SfmnMOJh5YF0HU8Sot0apfNExB43bJSWm3wZjIuQwJnC3Ss3CIo5pWGOXeEcqG4TjA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
];
