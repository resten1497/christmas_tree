const colors = [91, 93, 94, 95, 96, 97];
const symbols = ["o", "O", "+", "x", "X"];

function makeTree(width, height){
    if(!width) width=30;
    if(!height) height=30;
    let ret = [];
    let center = Math.floor(width/2);
    
    for(let y=0;y<height;y++){
        let col = [];
        for(let x=0;x<width;x++){
            if(y<height*(4/5)){
                let y2 = y/height*center;
                if(x >= (center-y2) && x<= (center+y2)){
                    let isNormal = x%(y%(height/5)+2);
                    let symbol = Math.floor(Math.random()*symbols.length);
                    let color = Math.floor(Math.random()*colors.length);
                    if(y===0){
                        col.push("\x1b["+colors[color]+"mX\x1b[0m");
                    }else if(isNormal===0){
                        col.push("\x1b["+colors[color]+"m"+symbols[symbol]+"\x1b[0m");
                    }else{
                        col.push("\x1b[92m*\x1b[0m");
                    }
                    
                }else{
                    col.push(" ");
                }
            }else{
                if(x>=center-center/10 && x<=center+center/10){
                    col.push("\x1b[42m+\x1b[49m");
                }else{
                    col.push(" ");
                }
            }
        }
        ret.push(col.join(""));
    }
    return ret.join("\n");
}
function printTree(str){
    console.clear();
    console.log(str);
}

setInterval(()=>{
    printTree(makeTree(30, 30));
}, 500);
