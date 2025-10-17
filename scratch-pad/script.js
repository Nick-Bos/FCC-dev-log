// --- Default Variables ---
let area = 0;

// Editable waste thresholds
let factor_of_waste = [100, 90, 80, 70, 60, 50, 40, 30, 20, 10];

// Default factors (editable too)
let defaultFactors = [1.0, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1];

// --- Create inputs dynamically ---
document.addEventListener("DOMContentLoaded", () => {
  const factorContainer = document.getElementById("factor-inputs");

  // Create both threshold + factor fields side by side
  factor_of_waste.forEach((threshold, i) => {
    const idx = i + 1;
    const wrapper = document.createElement("div");
    wrapper.classList.add("factor-cell");
    wrapper.innerHTML = `
      <label>Waste ${idx}</label>
      <input type="number" id="waste${idx}" value="${threshold}" step="1">
      <input type="number" id="factor${idx}" value="${defaultFactors[i]}" step="0.1">
    `;
    factorContainer.appendChild(wrapper);
  });

  document
    .getElementById("areaInput_submit")
    .addEventListener("click", handleSubmit);
});

// --- Core Calculation ---
function getFactorFromArea(area, wastes, factors) {
  let factor = 0;
  let activeIndex = -1;

  // Find which waste range area fits into
  for (let i = 0; i < wastes.length - 1; i++) {
    if (area <= wastes[i] && area > wastes[i + 1]) {
      factor = factors[i];
      activeIndex = i;
      break;
    }
  }

  // If larger than highest or smaller than lowest
  if (area > wastes[0]) {
    factor = factors[0];
    activeIndex = 0;
  } else if (area <= wastes[wastes.length - 1]) {
    factor = factors[factors.length - 1];
    activeIndex = factors.length - 1;
  }

  return { factor, activeIndex };
}

function calculateResult(area, factor) {
  return area !== 0 ? factor / (area / 10) + 1 : 0;
}

// --- Handle Button Click ---
function handleSubmit() {
  const areaInput = parseFloat(document.getElementById("areaInput").value);
  const resultDiv = document.getElementById("resultDiv");
  const formulaText = document.getElementById("formulaText");

  if (isNaN(areaInput) || areaInput <= 0) {
    resultDiv.textContent = "Please enter a valid area value.";
    resultDiv.style.color = "#d00";
    formulaText.textContent = "Waiting for valid input...";
    return;
  }

  // Pull all updated waste + factor values
  let wastes = [];
  let factors = [];
  for (let i = 1; i <= 10; i++) {
    wastes.push(parseFloat(document.getElementById(`waste${i}`).value));
    factors.push(parseFloat(document.getElementById(`factor${i}`).value));
  }

  // Find correct factor based on area
  const { factor, activeIndex } = getFactorFromArea(areaInput, wastes, factors);
  const result = calculateResult(areaInput, factor);

  // --- Highlight the active factor row
  document.querySelectorAll(".factor-cell").forEach((cell, idx) => {
    cell.style.backgroundColor = idx === activeIndex ? "#eaf4ff" : "transparent";
  });

  // --- Display results
  resultDiv.textContent = `Result: ${result.toFixed(4)}`;
  resultDiv.style.color = "var(--primary)";

  // --- Formula breakdown
  const lowerBound = activeIndex < wastes.length - 1 ? wastes[activeIndex + 1] : 0;
  const upperBound = wastes[activeIndex];
  let breakdown = `
Area entered: ${areaInput}
Selected factor range: between ${lowerBound} and ${upperBound}
Chosen factor: ${factor}
Formula: factor / (area / 10) + 1
Substitution: ${factor} / (${areaInput} / 10) + 1
Result: ${result.toFixed(4)}
  `;
  formulaText.textContent = breakdown.trim();
}
