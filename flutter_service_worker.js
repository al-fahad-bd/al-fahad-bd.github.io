'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "b7df3591f2b4329205bfdb92711d367b",
".git/config": "c9d7f2cec84fa5bcb767e5c138375bbb",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "11ec6afdd2ccaa2a7203824bc1cdfb60",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "bf37abf0e0da400d757a0ddbd424eb09",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "78e977a94a1107ec8552cba41b9688da",
".git/logs/refs/heads/main": "79f97a6d057eefd8a17ceb90091f297c",
".git/logs/refs/heads/master": "68aada5e5dce9563254bfde365e14760",
".git/logs/refs/remotes/origin/main": "2153d04222c899ea32d49fa0263b1650",
".git/objects/06/d42cb3d948d8e9c2716d4795e5297beb859447": "00501b97152032afcc68be06066c6ea5",
".git/objects/0d/6c97b8f643ea91057b514ba49bf312cc09b45a": "e2e9aeda4840a009e7f6245e1570a4fd",
".git/objects/0e/a4d3cb9724136db442b34976758ab70669a381": "6c03b73e9f6ce55acb60a783af354040",
".git/objects/13/83ff74121c24f3320593a77cd79fd7a8f37ecb": "b5be3b8bb73cf35ef40afb3ac116e584",
".git/objects/16/5da67191b73406e15fc3e6cf7cda3c195dc735": "86cfac30d97fb45bba2f4417782645d6",
".git/objects/19/9e8f055113f2908be3fb159f9f0b75bce06a58": "b69470acb1546ecfd4bdde4d8fd39cf9",
".git/objects/1e/25fb4841dbfcbc6e4fa75d9417a4113ba250bc": "e91280155bc02e320c2a664e7fefc7b5",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/23/540ea10b75af3fe4d4979c0c8eb33853993894": "c14bca33700bce8036a2df1101e71b06",
".git/objects/27/7a82fe5fb31a783ff215df99eabd658391af61": "b1c80c070060412ac78ea63205666d61",
".git/objects/27/ef6357db63828dadc4cc8ab63b2c3b6e1b4772": "33bb75e112f8f0e8ca40c979a7d4173f",
".git/objects/2a/c82dff43f48e3bb9ca1f37619cd67e151edf07": "9adbf4b4615e2f4469dc4900c0a860e0",
".git/objects/2f/8ec4ea0ba23938a20a9b372df60ec1727a47ea": "f0259282a5f3fe5ffb16f9f06961c90b",
".git/objects/30/12d0ddea8d5864942a962ceb265b63badda684": "81141c8b33b748a454dd7840b8544727",
".git/objects/30/aba5730bc20ed33e4c647f8c51541db5c9b0c5": "3d59fc88808b91a532e69b1f2db44da7",
".git/objects/31/a2c03842358b252ea6ee9625d88b62dd67c0e0": "b34dd30a06f5fa5a078d7cc940fe3fb5",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/36/4f64bc67c95f3ef52996d0cf361333c25d7c0a": "90e6368f310779093971b6301adb7267",
".git/objects/36/d4c8f21c7626094e2d3096952e119f8e999e47": "49686d150da2089f9a6786098c1f9dcb",
".git/objects/38/7422a3c6b392336b9061990456552a2a561e77": "058c0983cd6ce8b27e2a8e880606c0bc",
".git/objects/39/6515a929f9e6cd3fb85bb68ee643eea646ce4f": "6d8d0ae22eca5b1c48efd5a59af988af",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/40/b19e7155b265eebbdfbb0d8438403c1a317e19": "2c0756b902a38e6d8b1b9bc74de50a49",
".git/objects/43/0745462af91d934b045e98f5f9581c5d81e797": "f5976f66c61e291ad63e025a97ab0c64",
".git/objects/43/508c0adbf776b3fe429c644ff42d369e5af644": "a9fb51cae679171f05785b992660ebdf",
".git/objects/51/26b103702f59414e3c400fff052788b0d2ee8d": "0eefd7dd55cfebc77fe67a8a66a5926c",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/5d/14b16e00e174d8f85afb41d9da80d0efe9c7b2": "47cadb42b49d806deaa6297035e79072",
".git/objects/5d/15fadf1864d70c7184fca7d3efde79cdf68af5": "79a44d8578cc18e3add64aa6a97f0da0",
".git/objects/5d/ffa4e4d374056fdcdfaa9daea661a65545294c": "d75bdf1a97d7ddbd00ff5e63dbdcb9f4",
".git/objects/60/bf926f269b227f48b8222f48aa57156cb402e6": "b9c073b20e97ee1739af73733e3732b6",
".git/objects/61/eb6f698c3669c9938d0a161befdfc24288e101": "a29c2e357d488fa89d2e5cfa4fd3025b",
".git/objects/63/9531bb38bf5aba58fe091f8427c1edd3f175ac": "eec79a85d2eee8555c4c0f83ae92ee3a",
".git/objects/69/48d722d7cfe835f7c733ce3569afe88151a23c": "3cc14fc67397a2b2d3f0ac8e12d8c29d",
".git/objects/6a/63b25c7a5d7cbc7f3a4e15b50456eff8a61207": "94dfc72f7c718cad89630ced7849d815",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/6c/be09713fabc46bbe645b81ba953d9012cbc89b": "59b4dd85c71ad7a1704fc193ccdf673e",
".git/objects/71/a4c1fdea8d95319201032545dc87918ded3b88": "c6b7921a12dd88cd9d1b579d89f5ede2",
".git/objects/73/b5d0c1fc8c1603cb3c1689e444e5bbfae20b71": "6f2f981a2f3c362c1ac7c844a149f14e",
".git/objects/74/426de27a9372ca89a0907e42b155e1ab79c0d4": "779d0d4e730cf8d8eb86d73468f340af",
".git/objects/79/38f52df34b597404d0034ae3074064bae5de41": "79f0b48b85bd72bec5b9b27fc604f106",
".git/objects/7a/cb4a76f26116402dd3c2882acff803f63d8e6c": "e77f6b278728b0e0a063791068c5375a",
".git/objects/7e/d078f5e1739448466aa7776f5ab64381633888": "217c1943dd9e614708630e72b1fd4e27",
".git/objects/83/0e24dbf82b868d6c3df8dc867f2fa0ba460bb0": "737c11bad69c8616c8ffef2aa12ee64e",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/935d067b27c93ee5d35240fb3a5f146dc39a68": "cb5fcaab0a1bcf8390db638c4d900ab1",
".git/objects/8a/7a549efd6d287e9ec55a3a9db07eb2a5f38ac5": "2c36da7bfec0ca0ac93817500ea3d660",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/c3ee122720761e7b315172d075ddce18f4da73": "f27613d7390326ecc020ee3951bafa72",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/99/b3a5b6ec66be4cec842529a05d39c4c95d2cfc": "b71077bd51a169873a980f671ac3b8e0",
".git/objects/9a/1732c4384609c63700aaa2ed436d03b49a8717": "a9da0ee7b9bc0015ff571bed2a225e70",
".git/objects/9a/faa03602bc141f3f81d5d668c6b9516d215515": "74f7413ea18d04f4741d3e9731bb5ffb",
".git/objects/9d/8c3c1e758ef8711186ae12fb0fd22aaa0f70db": "a391c0384d1cabd19155f2907d961b09",
".git/objects/a0/a029e2fff60997265114e9384ea917c4557535": "e6af0176306f847d089119d43bf96cc7",
".git/objects/a2/c2c501d92cade4609fbff2a20d058036a0f07d": "5799cad65f96fe00122233a5625d5041",
".git/objects/a5/3efdf92300d180241adcd14d81d15a734c4e08": "cdce04155deb291d95d5b2a8a45a186e",
".git/objects/ab/a81265ca0976164ce8f775ee076816dddc1dee": "b27579629bbc955d94ee3d69103fee22",
".git/objects/b0/0c684d3ef14be87f0badd2eecc88babc70fea0": "7b995019412294d024b82f3c623c5831",
".git/objects/b4/18e19c873aee4ba053a964f892a4c6fa550eed": "7d9d797baf1454004674966445bf2d97",
".git/objects/b5/d839ebd927b4ae5b7954802b7d2075150a2ab5": "ff8b41b883e4e3849d8e9feae64cd027",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/a3a165d6e0fbd06be8115e876db162314e1063": "199e9333a9084ee0f75b57380473b3aa",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/fe51e276f463d0b46d59adb42a220ced67d542": "b3005420d8f026e826a653ec401121ea",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/bc/fff12810314e3eca13e9f8fbea4031c6410874": "b81902d44293159c0ab1b757081936e1",
".git/objects/bd/e3427a8239c05ac7b38656a5ab3141e48f8a2f": "ee8e70f20f98c838815eec5f3f984a3e",
".git/objects/c2/042d7950054ad9a9530ecdfbb9fde2d91f9658": "4bdd159ad6631a2b364e75c35ec7c983",
".git/objects/c5/bae1869da8cd58107d8c301eb271a90f84fe88": "aaea3d7870a0673ecc96ede198840067",
".git/objects/c7/0ab889b87f8fe1cfc7d6d54a8491fbe8d57b53": "fa539f26be9a7e8c31dc2c0784aae097",
".git/objects/c7/696d6eda82cbd09bef0e0dd28e44d7c47cc7da": "8f7088548924cf21fe35511859f52513",
".git/objects/cb/49e98ed5dd63c8bf62ae7032871904e59d5294": "f12970872412925369bead77e7e4f9c5",
".git/objects/ce/550ee32f8a60c976b0a0ee0799b1f13244675e": "32887b4a118f9113236b7508546f277b",
".git/objects/d3/29b6f3769d6c9fd21be00fac25e1db00b7daff": "85e2ad9de45b3b93f450cf6da6fcc169",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/3ba83b45e0687d913a0bf6990116374834d2de": "b3d0618f3cadbc75bc52be2737cc9146",
".git/objects/dc/5be463464d0771246e2e3aabeb85df6f7e5220": "8ce83f30e3dfb67db0f4c9ee4a141ea8",
".git/objects/dc/a9692fc08188e149d643486918990da2317978": "5d4313ca78fddb65327a9d715c51ba74",
".git/objects/e5/bd6194d12f0855afd786b8e2c36eb297251a74": "fa1fc1c20d2febe17cad3b979396ce69",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f0/64af51bc6bc93662064e2ea20c6051f6adda83": "c2717e960e54ad4bdfffba56623d670f",
".git/objects/f1/a2faa12dffa50c958cdc48c910ab49af81b672": "3df6283babe63927456daae31d703a3e",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/010cda95492006dae3638dfb01a8d0822a1e6a": "04eb9fcdf209b67f396e5ab84cb956e2",
".git/objects/f7/d9a208e09008127652af0058514b83771c89dc": "f79a5bd7b298474c21cacce8bb51b30f",
".git/objects/f8/47a93050c05037a579a4b92f09d474480af23d": "5e256c5b061a63d3e2ffc8547fceedd8",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/fe/7525e6424ff3ad944aab33e3bb03eb7f589316": "3b96d76e21841dbdf98e40c56a4c3aa0",
".git/ORIG_HEAD": "61dbe7476f8cb0dd43271f8d3bedb715",
".git/refs/heads/main": "6b656525c0fef05f85b073ecfcdc037b",
".git/refs/heads/master": "61dbe7476f8cb0dd43271f8d3bedb715",
".git/refs/remotes/origin/main": "6b656525c0fef05f85b073ecfcdc037b",
"assets/AssetManifest.bin": "bf6061bfb3e8e5ddb48757ef9926cba2",
"assets/AssetManifest.bin.json": "62fc2afe6a4adb929bbb613a400adf06",
"assets/AssetManifest.json": "b740cb029d44e57ebe05749c29f0c890",
"assets/assets/svg/api-logo2.png": "6cc9aa4a19bd51386599b6994876b5b8",
"assets/assets/svg/apiTesterApp.png": "463e364851b37736f9cd5954c7cd93b1",
"assets/assets/svg/brac-healthcare.png": "1e0988dae57d0f64fcdc0d48faa9234c",
"assets/assets/svg/coming-soon.gif": "fd74108a9aa13da1ba2ec3411f20ea82",
"assets/assets/svg/dart-logo.svg": "b6b877296e8c0106102c299884053fc7",
"assets/assets/svg/dart-logo2.png": "6822073b3db0b1e3a1737fda9154b3a3",
"assets/assets/svg/externalLink.svg": "8192b9938a05ad4951f40457d563d947",
"assets/assets/svg/figma-logo.svg": "bfc8530d272f878aca3645d0faf615a4",
"assets/assets/svg/figma-logo2.png": "bb468433d39456b8706420e7eddcf757",
"assets/assets/svg/firebase-logo.svg": "92ed4416ef316b0a25440b0222573da7",
"assets/assets/svg/firebase-logo2.png": "4a0746fe33d43aca6ac1b91939fa68bc",
"assets/assets/svg/flutter-logo.svg": "c0b33b0fb08e38ae8ada0b1127b6857a",
"assets/assets/svg/flutter-logo2.png": "5c030bca1741485521cc112f47bdedc9",
"assets/assets/svg/folder.svg": "21d06f307775812c56fbdaffae58576b",
"assets/assets/svg/github.svg": "d1baddb890c4751b001ae93bf9c5ce7a",
"assets/assets/svg/HRM-App.png": "7845ec3540ce8653f413057ba013c232",
"assets/assets/svg/instagram.svg": "a5740599830b320c560d589a6ac0eb80",
"assets/assets/svg/linkedIn.svg": "b031a1bad55a5f7c3bdb7e343f9bf159",
"assets/assets/svg/logo.png": "1a65dac7bf9a50a07ab893862692b9dd",
"assets/assets/svg/logo.svg": "350cf5f6398a442dc69b1633df187b23",
"assets/assets/svg/NotePadApp.png": "26523f9b6cd37fdb2e05febf97391517",
"assets/assets/svg/picture.png": "7662690049a5a0bb9152de3438e808e3",
"assets/assets/svg/picture2.png": "7385c394550212d4d72e97d9cfe2054f",
"assets/assets/svg/rain.gif": "d536c25d65a7adcb113fee3d1c5a22ad",
"assets/assets/svg/smartWalletApp.png": "0bad65f2dfb54a2eb8abd9899aabeb68",
"assets/assets/svg/specialized-hospital.png": "9abe5f37a9a809d5d3858db2ce3be7c0",
"assets/assets/svg/sqlite-logo.svg": "ee7e6621b7d3bf8ee80f6af67c71ef91",
"assets/assets/svg/sqlite-logo2.png": "67fdfef369a946c4f0d56c0a4d5df67f",
"assets/assets/svg/stackoverflow.svg": "102e007518addc36ad4b780e2158286f",
"assets/assets/svg/ToDoApp.png": "9da38911ed86d189058365c5ebf75508",
"assets/assets/svg/twitter.svg": "7c3b9ed87796d5f03c6b6c9ee913d1da",
"assets/FontManifest.json": "b2be5fcd09479bf10117dc87fde86860",
"assets/fonts/MaterialIcons-Regular.otf": "5c391d0e9d3b2c48f804e4da406128ab",
"assets/fonts/sfmono.otf": "f28892de5e5d3e75a4247d62be1e6cf0",
"assets/NOTICES": "a0a35cfa7927770be19463e55b146468",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "d10ac4ee5ebe8c8fff90505150ba2a76",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"flutter_bootstrap.js": "14accd5d0b06dace4ce0781697cafe6f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "510120590b61e2d30c387d4022ef629e",
"/": "510120590b61e2d30c387d4022ef629e",
"main.dart.js": "3be3592d183a4fa8e0ad8cc9a1ba4a0b",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
