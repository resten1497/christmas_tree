let firstRow = "┌────────────────────────┐";
let blankRow = "│ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ│";
let lastRow = "└────────────────────────┘";
const bone = "│";
const blank = "ㅤ";
const leafs = ["%", "*", "&", "x", "♪"];

const $startingpoint = document.querySelector("#startingpoint");
const $endingpoint = document.querySelector("#endingpoint");
const $makeBtn = document.querySelector("#makeBtn");
const $clearBtn = document.querySelector("#clearBtn");

let size = Number(document.querySelector("input[type='range']").value);
let op_available = true;

$makeBtn.addEventListener("click", async () => {
  if (!op_available) return;
  // bind state
  size = Number(document.querySelector("input[type='range']").value);
  // fit to size
  firstRow = "┌" + "─".repeat(size) + "┐";
  blankRow = "│" + blank.repeat(size) + "│";
  lastRow = "└" + "─".repeat(size) + "┘";
  op_available = false;
  // animation
  await clear_animation();
  await appear_animation();
  const strs = makeTreeString(size);
  await draw_animation(strs);
  op_available = true;
});

$clearBtn.addEventListener("click", async () => {
  if (!op_available) return;
  op_available = false;
  await clear_animation();
  op_available = true;
});

async function buildAsync(point, chars, timeout) {
  for (const char of chars) {
    await new Promise((resolve) => {
      setTimeout(() => {
        const child = document.createElement("div");
        child.innerText = char;
        point.insertAdjacentElement("beforebegin", child);
        resolve();
      }, timeout);
    });
  }
}

// async function drawAsync

async function destroyAsync(point, timeout) {
  while (point.previousElementSibling.id !== "startingpoint") {
    await new Promise((resolve) => {
      setTimeout(() => {
        point.previousElementSibling.remove();
        resolve();
      }, timeout);
    });
  }
}

async function draw_animation(strs) {
  let pointer = $startingpoint.nextElementSibling.nextElementSibling;
  for (let i = 0; i < strs.length; i++) {
    await new Promise((resolve) => {
      setTimeout(() => {
        pointer.innerText = bone + strs[i] + bone;
        resolve();
      }, 100);
    });
    pointer = pointer.nextElementSibling;
  }
}

async function appear_animation() {
  const screen = [
    firstRow,
    ...Array.from({ length: size }, () => blankRow),
    lastRow,
  ];
  await buildAsync($endingpoint, screen, 100);
}

async function clear_animation() {
  await destroyAsync($endingpoint, 100);
}

function makeTreeString(size) {
  let treeString = [];
  for (let r = 0; r < size; r++) {
    let s = "";
    let spaces = size - (r + 1);
    let side = Math.floor(spaces / 2);
    let side2 = spaces - side;
    s += blank.repeat(side);
    for (let c = 0; c < r + 1; c++) {
      s += leafs[Math.floor(Math.random() * leafs.length)];
    }
    s += blank.repeat(side2);
    treeString.push(s);
  }
  return treeString;
}
// debug
// $makeBtn.dispatchEvent(new Event("click"));
