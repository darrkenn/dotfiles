import http from "k6/http";
import { sleep } from "k6";

const url = __ENV.URL || "http://localhost";

export let options = {
  stages: [
    { duration: "5s", target: 25 },
    { duration: "5s", target: 50 },
    { duration: "5s", target: 75 },
    { duration: "5s", target: 100 },
  ],
  thresholds: {
    http_req_duration: ["p(95)<500"],
  },
};

export default function () {
  http.get(url);
  sleep(1);
}
