const wasteThresholds = [100, 90, 80, 70, 60, 50, 40, 30, 20, 10];
const wasteFactors = [1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1];

const areaInput = document.getElementById("areaInput");
const resultBox = document.getElementById("result");
const formulaOutput = document.getElementById("formulaOutput");
const factorsGrid = document.getElementById("factorsGrid");

const sheetHeightInput = document.getElementById("sheetHeight");
const sheetLengthInput = document.getElementById("sheetLength");
const addFactorInput = document.getElementById("addFactor");
const qtyResult = document.getElementById("qtyResult");

function renderFactors() {
  factorsGrid.innerHTML = "";
  wasteThresholds.forEach((threshold, i) => {
    const cell = document.createElement("div");
    cell.classList.add("factor-cell");

    const thresholdInput = document.createElement("input");
    thresholdInput.type = "number";
    thresholdInput.value = threshold;
    thresholdInput.addEventListener("input", () => {
      wasteThresholds[i] = parseFloat(thresholdInput.value);
    });

    const factorInput = document.createElement("input");
    factorInput.type = "number";
    factorInput.step = "0.1";
    factorInput.value = wasteFactors[i];
    factorInput.addEventListener("input", () => {
      wasteFactors[i] = parseFloat(factorInput.value);
    });

    cell.appendChild(thresholdInput);
    cell.appendChild(factorInput);
    factorsGrid.appendChild(cell);
  });
}
renderFactors();

function calculate() {
  const area = parseFloat(areaInput.value);
  if (isNaN(area) || area <= 0) return;

  let factor = 0;
  let range = "";

  for (let i = 0; i < wasteThresholds.length; i++) {
    const current = wasteThresholds[i];
    const next = wasteThresholds[i + 1] ?? 0;
    if (area <= current && area > next) {
      factor = wasteFactors[i];
      range = `between ${next} and ${current}`;
      highlightActive(i);
      break;
    }
  }

  const result = factor / (area / 10) + 1;
  resultBox.textContent = `Result: ${result.toFixed(4)}`;
  formulaOutput.textContent = `
Area entered: ${area}
Selected factor range: ${range}
Chosen factor: ${factor}
Formula: factor / (area / 10) + 1
Substitution: ${factor} / (${area} / 10) + 1
Result: ${result.toFixed(4)}
`;
  addFactorInput.value = result.toFixed(4);
}

function highlightActive(activeIndex) {
  document.querySelectorAll(".factor-cell").forEach((cell, idx) => {
    if (idx === activeIndex) cell.classList.add("active");
    else cell.classList.remove("active");
  });
}

function calculateQuantity() {
  const area = parseFloat(areaInput.value);
  const sheetHeight = parseFloat(sheetHeightInput.value);
  const sheetLength = parseFloat(sheetLengthInput.value);
  const add = parseFloat(addFactorInput.value);

  if ([area, sheetHeight, sheetLength, add].some(isNaN)) {
    qtyResult.textContent = "Qty: Invalid input";
    return;
  }

  const qty = Math.ceil(area / (sheetLength * sheetHeight) * add) + 1;
  qtyResult.textContent = `Qty: ${qty}`;
}

document.getElementById("calculateBtn").addEventListener("click", calculate);
document.getElementById("calcQtyBtn").addEventListener("click", calculateQuantity);

const themeToggle = document.getElementById("themeToggle");
themeToggle.addEventListener("click", () => {
  document.body.classList.toggle("dark");
  themeToggle.textContent = document.body.classList.contains("dark") ? "☀️" : "🌙";
});
