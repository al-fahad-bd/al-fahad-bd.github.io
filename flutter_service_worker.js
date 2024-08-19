'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a70f1a6cc4fb1e5e6f38b7cf260e7f0b",
"assets/AssetManifest.bin.json": "1ea571806b76db7d68122411adff0c4c",
"assets/AssetManifest.json": "b3adeed32c51fe6f07d3ef4555576359",
"assets/assets/svg/api-logo2.png": "6cc9aa4a19bd51386599b6994876b5b8",
"assets/assets/svg/apiTesterApp.png": "463e364851b37736f9cd5954c7cd93b1",
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
"flutter_bootstrap.js": "9a62e2a74597e9ae8876f9c207179578",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "510120590b61e2d30c387d4022ef629e",
"/": "510120590b61e2d30c387d4022ef629e",
"main.dart.js": "0d6e17e3b6bacb79b1c7d3f2482365c4",
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
