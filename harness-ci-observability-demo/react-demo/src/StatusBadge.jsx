import PropTypes from "prop-types";

export default function StatusBadge({ status }) {
  const label = status === "success" ? "Operational" : "Degraded";
  return (
    <span data-testid="status-badge" aria-live="polite">
      {label}
    </span>
  );
}

StatusBadge.propTypes = {
  status: PropTypes.string.isRequired
};
