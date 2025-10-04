import http from "k6/http";
import { sleep } from "k6";

const url = __ENV.URL || "http://localhost";

export let options = {
  stages: [
    { duration: "5s", target: 0 },
    { duration: "60s", target: 100 },
  ],
  thresholds: {
    http_req_duration: ["p(95)<500"],
  },
};

export default function () {
  http.get(url);
  sleep(1);
}
