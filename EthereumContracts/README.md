[37m2020-12-25T21:12:13.021Z [31;22m[ERROR] [32;1mroadmap-generator[0m: GitHubError: Bad credentials
    at GitHub.onResponse (/Users/Ollie/Desktop/HODL-DAO/roadmap-generator/node_modules/octocat/lib/index.js:89:15)
    at GitHub.wrapper [as onResponse] (/Users/Ollie/Desktop/HODL-DAO/roadmap-generator/node_modules/octocat/node_modules/lodash/index.js:3095:19)
    at Request._callback (/Users/Ollie/Desktop/HODL-DAO/roadmap-generator/node_modules/octocat/lib/index.js:125:31)
    at Request.self.callback (/Users/Ollie/Desktop/HODL-DAO/roadmap-generator/node_modules/request/request.js:198:22)
    at Request.emit (events.js:314:20)
    at Request.<anonymous> (/Users/Ollie/Desktop/HODL-DAO/roadmap-generator/node_modules/request/request.js:1063:14)
    at Request.emit (events.js:326:22)
    at IncomingMessage.<anonymous> (/Users/Ollie/Desktop/HODL-DAO/roadmap-generator/node_modules/request/request.js:1009:12)
    at IncomingMessage.emit (events.js:326:22)
    at endReadableNT (_stream_readable.js:1252:12)
    at processTicksAndRejections (internal/process/task_queues.js:80:21) {
  statusCode: 401,
  result: {
    statusCode: 401,
    statusType: '4XX',
    headers: {
      date: 'Fri, 25 Dec 2020 21:12:12 GMT',
      'content-type': 'application/json; charset=utf-8',
      'content-length': '80',
      connection: 'close',
      server: 'GitHub.com',
      status: '401 Unauthorized',
      'x-github-media-type': 'github.v3',
      'x-ratelimit-limit': '60',
      'x-ratelimit-remaining': '55',
      'x-ratelimit-reset': '1608934165',
      'x-ratelimit-used': '5',
      'access-control-expose-headers': 'ETag, Link, Location, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Used, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval, X-GitHub-Media-Type, Deprecation, Sunset',
      'access-control-allow-origin': '*',
      'strict-transport-security': 'max-age=31536000; includeSubdomains; preload',
      'x-frame-options': 'deny',
      'x-content-type-options': 'nosniff',
      'x-xss-protection': '1; mode=block',
      'referrer-policy': 'origin-when-cross-origin, strict-origin-when-cross-origin',
      'content-security-policy': "default-src 'none'",
      vary: 'Accept-Encoding, Accept, X-Requested-With',
      'x-github-request-id': '8429:0DD8:679CFA:817637:5FE655AC'
    },
    body: {
      message: 'Bad credentials',
      documentation_url: 'https://docs.github.com/rest'
    }
  },
  documentationUrl: 'https://docs.github.com/rest',
  errors: []
}
