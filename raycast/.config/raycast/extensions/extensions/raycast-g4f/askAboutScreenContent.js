var __create = Object.create;
var __defProp = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __getProtoOf = Object.getPrototypeOf;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __export = (target, all) => {
  for (var name in all)
    __defProp(target, name, { get: all[name], enumerable: true });
};
var __copyProps = (to, from, except, desc) => {
  if (from && typeof from === "object" || typeof from === "function") {
    for (let key of __getOwnPropNames(from))
      if (!__hasOwnProp.call(to, key) && key !== except)
        __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
  }
  return to;
};
var __toESM = (mod, isNodeMode, target) => (target = mod != null ? __create(__getProtoOf(mod)) : {}, __copyProps(
  // If the importer is in node compatibility mode or this is not an ESM
  // file that has been converted to a CommonJS file using a Babel-
  // compatible transform (i.e. "__esModule" has not been set), then set
  // "default" to the CommonJS "module.exports" for node compatibility.
  isNodeMode || !mod || !mod.__esModule ? __defProp(target, "default", { value: mod, enumerable: true }) : target,
  mod
));
var __toCommonJS = (mod) => __copyProps(__defProp({}, "__esModule", { value: true }), mod);

// src/askAboutScreenContent.jsx
var askAboutScreenContent_exports = {};
__export(askAboutScreenContent_exports, {
  default: () => AskAboutScreenContent
});
module.exports = __toCommonJS(askAboutScreenContent_exports);
var import_api = require("@raycast/api");
var import_util = __toESM(require("util"));
var import_child_process = require("child_process");
async function AskAboutScreenContent(props) {
  const execPromise = import_util.default.promisify(import_child_process.exec);
  await (0, import_api.closeMainWindow)();
  const path = `${import_api.environment.assetsPath}/screenshot.png`;
  await execPromise(`/usr/sbin/screencapture ${path}`);
  await (0, import_api.launchCommand)({
    name: "askAI",
    type: import_api.LaunchType.UserInitiated,
    context: {
      props,
      params: { allowPaste: true, requireQuery: true, showFormText: "Query", defaultFiles: [path] }
    }
  });
}
//# sourceMappingURL=data:application/json;base64,ewogICJ2ZXJzaW9uIjogMywKICAic291cmNlcyI6IFsiLi4vLi4vLi4vLi4vcmF5Y2FzdC1nNGYvc3JjL2Fza0Fib3V0U2NyZWVuQ29udGVudC5qc3giXSwKICAic291cmNlc0NvbnRlbnQiOiBbImltcG9ydCB7IGVudmlyb25tZW50LCBjbG9zZU1haW5XaW5kb3csIGxhdW5jaENvbW1hbmQsIExhdW5jaFR5cGUgfSBmcm9tIFwiQHJheWNhc3QvYXBpXCI7XG5pbXBvcnQgdXRpbCBmcm9tIFwidXRpbFwiO1xuaW1wb3J0IHsgZXhlYyB9IGZyb20gXCJjaGlsZF9wcm9jZXNzXCI7XG5cbi8vIE5vdGUgaG93IHRoaXMgY29tbWFuZCBpcyBhIHZlcnkgc3BlY2lhbCBjYXNlOiBpdCBpcyBhIFwibm8tdmlld1wiIHR5cGUgY29tbWFuZCxcbi8vIHdoaWNoIG1lYW5zIGl0IGRvZXMgbm90IHJldHVybiBhbnkgVUkgdmlldywgYW5kIGluc3RlYWQgY2FsbHMgYXNrQUkgdG8gaGFuZGxlIHRoZSByZW5kZXJpbmcuXG4vLyBUaGlzIGlzIGJlY2F1c2UgdGhlIGZ1bmN0aW9uIGlzIGFzeW5jLCBhbmQgYXN5bmMgZnVuY3Rpb25zIGFyZSBvbmx5IHBlcm1pdHRlZCBpbiBuby12aWV3IGNvbW1hbmRzLlxuZXhwb3J0IGRlZmF1bHQgYXN5bmMgZnVuY3Rpb24gQXNrQWJvdXRTY3JlZW5Db250ZW50KHByb3BzKSB7XG4gIGNvbnN0IGV4ZWNQcm9taXNlID0gdXRpbC5wcm9taXNpZnkoZXhlYyk7XG4gIGF3YWl0IGNsb3NlTWFpbldpbmRvdygpO1xuICBjb25zdCBwYXRoID0gYCR7ZW52aXJvbm1lbnQuYXNzZXRzUGF0aH0vc2NyZWVuc2hvdC5wbmdgO1xuICBhd2FpdCBleGVjUHJvbWlzZShgL3Vzci9zYmluL3NjcmVlbmNhcHR1cmUgJHtwYXRofWApO1xuXG4gIGF3YWl0IGxhdW5jaENvbW1hbmQoe1xuICAgIG5hbWU6IFwiYXNrQUlcIixcbiAgICB0eXBlOiBMYXVuY2hUeXBlLlVzZXJJbml0aWF0ZWQsXG4gICAgY29udGV4dDoge1xuICAgICAgcHJvcHM6IHByb3BzLFxuICAgICAgcGFyYW1zOiB7IGFsbG93UGFzdGU6IHRydWUsIHJlcXVpcmVRdWVyeTogdHJ1ZSwgc2hvd0Zvcm1UZXh0OiBcIlF1ZXJ5XCIsIGRlZmF1bHRGaWxlczogW3BhdGhdIH0sXG4gICAgfSxcbiAgfSk7XG59XG4iXSwKICAibWFwcGluZ3MiOiAiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQSxpQkFBd0U7QUFDeEUsa0JBQWlCO0FBQ2pCLDJCQUFxQjtBQUtyQixlQUFPLHNCQUE2QyxPQUFPO0FBQ3pELFFBQU0sY0FBYyxZQUFBQSxRQUFLLFVBQVUseUJBQUk7QUFDdkMsWUFBTSw0QkFBZ0I7QUFDdEIsUUFBTSxPQUFPLEdBQUcsdUJBQVksVUFBVTtBQUN0QyxRQUFNLFlBQVksMkJBQTJCLElBQUksRUFBRTtBQUVuRCxZQUFNLDBCQUFjO0FBQUEsSUFDbEIsTUFBTTtBQUFBLElBQ04sTUFBTSxzQkFBVztBQUFBLElBQ2pCLFNBQVM7QUFBQSxNQUNQO0FBQUEsTUFDQSxRQUFRLEVBQUUsWUFBWSxNQUFNLGNBQWMsTUFBTSxjQUFjLFNBQVMsY0FBYyxDQUFDLElBQUksRUFBRTtBQUFBLElBQzlGO0FBQUEsRUFDRixDQUFDO0FBQ0g7IiwKICAibmFtZXMiOiBbInV0aWwiXQp9Cg==
