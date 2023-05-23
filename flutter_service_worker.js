'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "508d77a58570ec42e1a7017b792f15e3",
".git/config": "c9d7f2cec84fa5bcb767e5c138375bbb",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "6ee7b320788c781e5a020806321bee23",
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
".git/index": "1d95b47941bc0e642e95c74366bb1c55",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "dd7d66ceee3083cab453af785c0440ee",
".git/logs/refs/heads/main": "005640004be6906666f2bf7217378890",
".git/logs/refs/remotes/origin/main": "16715e881687b24e4b1596a12ec57bf6",
".git/objects/02/8c9f970fb38c9705b1afe78523ef4b9fd97370": "fa835642631df3ef6d58e496f22be311",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/08/d3b25d9af275ac2512b5841503321224347a30": "4662d7b7e2d8c27a2c05762efd1a2ae5",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/0d/6c97b8f643ea91057b514ba49bf312cc09b45a": "e2e9aeda4840a009e7f6245e1570a4fd",
".git/objects/13/83ff74121c24f3320593a77cd79fd7a8f37ecb": "b5be3b8bb73cf35ef40afb3ac116e584",
".git/objects/1a/0dde0021e0b72ab3a8d1cc7a1490b399358a02": "4050b8a464a1b799b874a005bd1a1112",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/1f/686edd1465272558af328ca43cb7189a0059e6": "5e83820f6d3e5392693d45bc239b2b61",
".git/objects/23/540ea10b75af3fe4d4979c0c8eb33853993894": "c14bca33700bce8036a2df1101e71b06",
".git/objects/23/ee7b40346b4b8e8167acd1c856964d899f1c6e": "d284535974a2db25091ca49241b414aa",
".git/objects/24/d6423023cbfb83fd306998f4a8d47fab546aef": "c7713aa64e9c9fce3a4f4b7acd9aa917",
".git/objects/27/7a82fe5fb31a783ff215df99eabd658391af61": "b1c80c070060412ac78ea63205666d61",
".git/objects/30/aba5730bc20ed33e4c647f8c51541db5c9b0c5": "3d59fc88808b91a532e69b1f2db44da7",
".git/objects/31/a2c03842358b252ea6ee9625d88b62dd67c0e0": "b34dd30a06f5fa5a078d7cc940fe3fb5",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/38/7422a3c6b392336b9061990456552a2a561e77": "058c0983cd6ce8b27e2a8e880606c0bc",
".git/objects/39/6515a929f9e6cd3fb85bb68ee643eea646ce4f": "6d8d0ae22eca5b1c48efd5a59af988af",
".git/objects/40/795824d4ef3b1b673235a246e57b81921426af": "e90fe26aeacb389cc3b5724f5e8f24a4",
".git/objects/40/b19e7155b265eebbdfbb0d8438403c1a317e19": "2c0756b902a38e6d8b1b9bc74de50a49",
".git/objects/43/a6bb6c91fd9e22f0e52106001f4bebd82ab4c1": "7b3f570581f6ebe1dec9c2a1a1e2eb01",
".git/objects/45/6b6302535a1525b9423cc896ca1217c3565765": "d28953b79bf182f54d5d9ba7f8ae854d",
".git/objects/45/acb40b3f8a236cf9ef30cb54adb25d1503fcfe": "6afa4715b6e673ed012669ee2d1c927c",
".git/objects/4b/825dc642cb6eb9a060e54bf8d69288fbee4904": "75589287973d2772c2fc69d664e10822",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/5d/14b16e00e174d8f85afb41d9da80d0efe9c7b2": "47cadb42b49d806deaa6297035e79072",
".git/objects/5d/ffa4e4d374056fdcdfaa9daea661a65545294c": "d75bdf1a97d7ddbd00ff5e63dbdcb9f4",
".git/objects/60/bf926f269b227f48b8222f48aa57156cb402e6": "b9c073b20e97ee1739af73733e3732b6",
".git/objects/60/eb413273861fa583137e65e4042bf304fa8b4b": "9f29ff3a0e5bd43a57d332faec971df2",
".git/objects/61/eb6f698c3669c9938d0a161befdfc24288e101": "a29c2e357d488fa89d2e5cfa4fd3025b",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/64/76b9858c3a705f0a5d1fa8c0efbb2042c9004e": "8f88ef20e97b604035858068a3822d31",
".git/objects/69/48d722d7cfe835f7c733ce3569afe88151a23c": "3cc14fc67397a2b2d3f0ac8e12d8c29d",
".git/objects/6d/19ea1f6485a8adf4a5098291e44347cd1180e8": "5c1b9d159682206535e2bde5c202e15a",
".git/objects/6e/1e215f34c74e49cf2c85e850521204940f06fc": "779014b1e4700789f120e663531ce508",
".git/objects/70/010cc4761157d9d7cc2d082cf342e63fe1190a": "baf21d1dacab382149ee93266543ff40",
".git/objects/72/bb3af904d67905592dd062c129e2c3d52cea47": "b6ccb00807ba45d41c518830e6d8c18c",
".git/objects/74/16083c138bd27864ac688b62c3725bb536809a": "c10b311dc2ae6019f163f70c524d2480",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/935d067b27c93ee5d35240fb3a5f146dc39a68": "cb5fcaab0a1bcf8390db638c4d900ab1",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/c3ee122720761e7b315172d075ddce18f4da73": "f27613d7390326ecc020ee3951bafa72",
".git/objects/96/e6593b92d4e181bc58bcba5510312549ef8d0f": "78ba8b0bf79519f60a2af66a0b3ccb4c",
".git/objects/9a/1732c4384609c63700aaa2ed436d03b49a8717": "a9da0ee7b9bc0015ff571bed2a225e70",
".git/objects/9a/faa03602bc141f3f81d5d668c6b9516d215515": "74f7413ea18d04f4741d3e9731bb5ffb",
".git/objects/9b/5c97b620c2e8805e1d15967618dc9d29949fa8": "3fb9e76f8f2f742c1bba4ae380f49cce",
".git/objects/9e/7f93963bf575966ec0c4a5155305317ac9e406": "da4e5b4a6c639e4c144f9642b2656565",
".git/objects/a0/a029e2fff60997265114e9384ea917c4557535": "e6af0176306f847d089119d43bf96cc7",
".git/objects/a1/ee3d6edee8c23eb09bd89d428ecd4d5faebb1a": "11900b806f601339da37965eaca6cc0d",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b4/18e19c873aee4ba053a964f892a4c6fa550eed": "7d9d797baf1454004674966445bf2d97",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/a3a165d6e0fbd06be8115e876db162314e1063": "199e9333a9084ee0f75b57380473b3aa",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bd/56298989c19e2a3c524192acc83c051cf2712e": "9888601763e52990d5aeabc4da4303ea",
".git/objects/c2/042d7950054ad9a9530ecdfbb9fde2d91f9658": "4bdd159ad6631a2b364e75c35ec7c983",
".git/objects/c4/5199189cb416d618136271d79b9b100b58c779": "6b9e226a0a70bf9429f216a8972ee340",
".git/objects/c5/bae1869da8cd58107d8c301eb271a90f84fe88": "aaea3d7870a0673ecc96ede198840067",
".git/objects/c7/0ab889b87f8fe1cfc7d6d54a8491fbe8d57b53": "fa539f26be9a7e8c31dc2c0784aae097",
".git/objects/cb/49e98ed5dd63c8bf62ae7032871904e59d5294": "f12970872412925369bead77e7e4f9c5",
".git/objects/d0/9815e31e03adc17bfa390a423e4f06262c77bf": "efd3bce9b6d5abd21757db8160885d89",
".git/objects/d3/29b6f3769d6c9fd21be00fac25e1db00b7daff": "85e2ad9de45b3b93f450cf6da6fcc169",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/03f6bff50f0b08310ad0a686e692d95825f60f": "dbfe18cfc8b926a1ed0c12c612f61a65",
".git/objects/d6/85510874af238852c0c9fec81b9c5b0f870fce": "ae2fde46017d827b97ba52ebae2b75b9",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/acce3b7b9b43b00cd867dbf8705032e767c693": "854e7ecef592e531617f4a978d7499ce",
".git/objects/da/3ba83b45e0687d913a0bf6990116374834d2de": "b3d0618f3cadbc75bc52be2737cc9146",
".git/objects/dc/5be463464d0771246e2e3aabeb85df6f7e5220": "8ce83f30e3dfb67db0f4c9ee4a141ea8",
".git/objects/de/0a29bb69d4bebea808f8b6cfbe3cb4d348bcb9": "69530d18a66d5f8e8b2b9f2f9b64eaf1",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f1/a2faa12dffa50c958cdc48c910ab49af81b672": "3df6283babe63927456daae31d703a3e",
".git/objects/f3/8ecdcd2cc1bc38c49363c76b86ece0aa954838": "973e9c9dfb2cdd0e97d2e0d35ad36a2b",
".git/objects/f5/fceaf2460f3a721627c1b34265bfc5e0f42db3": "7ff0c9aa963bf13e7a6c45e709a57cc9",
".git/objects/f7/d9a208e09008127652af0058514b83771c89dc": "f79a5bd7b298474c21cacce8bb51b30f",
".git/objects/f8/47a93050c05037a579a4b92f09d474480af23d": "5e256c5b061a63d3e2ffc8547fceedd8",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/fe/feee19e8de4a3705cba9ca87651cd3584b397f": "9d1faf6d30e75039f48eb358871832e6",
".git/ORIG_HEAD": "d6bef454f93ddf3a4801da588ddcf838",
".git/refs/heads/main": "d464d62049734fd940d4b8d56752910c",
".git/refs/remotes/origin/main": "d464d62049734fd940d4b8d56752910c",
"assets/AssetManifest.bin": "73a12cf9313c61b04388539bc53796c8",
"assets/AssetManifest.json": "a53a53f31bc0c4b87f1188a010ab3cfd",
"assets/assets/svg/api-logo2.png": "6cc9aa4a19bd51386599b6994876b5b8",
"assets/assets/svg/apiTesterApp.png": "463e364851b37736f9cd5954c7cd93b1",
"assets/assets/svg/dart-logo.svg": "c253911f8cb353c69ffcb6992f997e01",
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
"assets/assets/svg/logo.svg": "41f3c40d1613ed08b0ff77047ca7efb9",
"assets/assets/svg/NotePadApp.png": "26523f9b6cd37fdb2e05febf97391517",
"assets/assets/svg/picture.png": "7662690049a5a0bb9152de3438e808e3",
"assets/assets/svg/picture2.png": "7385c394550212d4d72e97d9cfe2054f",
"assets/assets/svg/rain.gif": "d536c25d65a7adcb113fee3d1c5a22ad",
"assets/assets/svg/smartWalletApp.png": "0bad65f2dfb54a2eb8abd9899aabeb68",
"assets/assets/svg/sqlite-logo.svg": "6a7290c66b4cc4b87166bf1cf08ffc04",
"assets/assets/svg/sqlite-logo2.png": "67fdfef369a946c4f0d56c0a4d5df67f",
"assets/assets/svg/stackoverflow.svg": "102e007518addc36ad4b780e2158286f",
"assets/assets/svg/ToDoApp.png": "9da38911ed86d189058365c5ebf75508",
"assets/assets/svg/twitter.svg": "7c3b9ed87796d5f03c6b6c9ee913d1da",
"assets/FontManifest.json": "40c4014ec2943a1dadf744c0001bb0c9",
"assets/fonts/MaterialIcons-Regular.otf": "8feaa6275391daaefd18b2c70a86717c",
"assets/fonts/sfmono.otf": "f28892de5e5d3e75a4247d62be1e6cf0",
"assets/NOTICES": "a4522be2f687d2aeee868271866b41bd",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "dd74f11e425603c7adb66100f161b2a5",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "5708c097a368cfb74cf4084767bfd957",
"/": "5708c097a368cfb74cf4084767bfd957",
"main.dart.js": "3337f286b76d71807742a368f588fe99",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"README.md": "65bdec636478c84b133e07f179c65553",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
