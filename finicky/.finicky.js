/**
* Save as ~/.finicky.js
*/
module.exports = {
  defaultBrowser: "Safari",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    }
  ],
  handlers: [
    {
      match: ({ sourceProcessPath }) =>
        sourceProcessPath && sourceProcessPath.startsWith("/Applications/Slack.app"),
      match: finicky.matchHostnames([
              "drive.google.com",
              "docs.google.com",
              "drivemode.atlassian.net",
              "www.notion.so",
              "meet.google.com",
              "secure.freee.co.jp",
              "miro.com",
              "id.atlassian.com",
              "atlassian.com"
]),
      browser: "Google Chrome"
    },
    {
      match: finicky.matchHostnames(["facebook.com"]),
      browser: "Firefox"
    }
    ]
};
