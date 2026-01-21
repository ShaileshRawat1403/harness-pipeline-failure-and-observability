import { render, screen } from "@testing-library/react";
import StatusBadge from "./StatusBadge.jsx";

describe("StatusBadge", () => {
  it("renders operational when status is success", () => {
    render(<StatusBadge status="success" />);
    expect(screen.getByTestId("status-badge")).toHaveTextContent("Operational");
  });

  it("renders degraded for non-success status", () => {
    render(<StatusBadge status="failed" />);
    expect(screen.getByTestId("status-badge")).toHaveTextContent("Degraded");
  });
});
