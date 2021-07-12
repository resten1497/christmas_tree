param (
    [Parameter(HelpMessage="Height of the tree")]
    [int]
    $TreeHeight
);

if ($TreeHeight -le 0) {
    $TreeHeight = 3;
}
$TreeWidth = 3 + 2 * $TreeHeight;

function Write-Sky {
    Write-Host "+" -NoNewline -ForegroundColor White -BackgroundColor Black;
    Write-Host ("-" * $TreeWidth) -NoNewline -ForegroundColor White -BackgroundColor Black;
    Write-Host "+" -ForegroundColor White -BackgroundColor Black;
        
    for ($i = 0; $i -lt $TreeHeight; ++$i) {
        Write-Host "|" -NoNewline -ForegroundColor White -BackgroundColor Black;
        for ($j = 0; $j -lt $TreeWidth; ++$j) {
            $RandomValue = Get-Random -Minimum 0.0 -Maximum 1.0;
            if ($RandomValue -lt 0.1) {
                Write-Host "*" -NoNewline -ForegroundColor White -BackgroundColor Black;
            } else {
                Write-Host " " -NoNewline -BackgroundColor Black;
            }
        }
        Write-Host "|" -ForegroundColor White -BackgroundColor Black;
    }
}

function Write-Star {
    Write-Host "|" -NoNewline -ForegroundColor White -BackgroundColor Black;

    $NumWhitespaces = ($TreeWidth - 1) / 2;
    $Whitespaces = " " * $NumWhitespaces;
    Write-Host -Object $Whitespaces -NoNewline -BackgroundColor Black;
    Write-Host -Object "★" -NoNewline -ForegroundColor Yellow -BackgroundColor Black;
    Write-Host -Object $Whitespaces -NoNewline -BackgroundColor Black;

    Write-Host "|" -ForegroundColor White -BackgroundColor Black;
}

function Write-Leaf {
    param ([int] $LeafWidth);

    Write-Host "|" -NoNewline -ForegroundColor White -BackgroundColor Black;

    $NumWhitespaces = ($TreeWidth - $LeafWidth) / 2;
    $Whitespaces = " " * $NumWhitespaces;
    $Leaf = "*" * $LeafWidth;
    Write-Host -Object $Whitespaces -NoNewline -BackgroundColor Black;
    Write-Host -Object $Leaf -NoNewline -ForegroundColor DarkGreen -BackgroundColor Black;
    Write-Host -Object $Whitespaces -NoNewline -BackgroundColor Black;
    
    Write-Host "|" -ForegroundColor White -BackgroundColor Black;
}

function Write-Leaves {
    for ($i = 0; $i -lt $TreeHeight; ++$i) {
        for ($j = 1; $j -le ($i + 3); ++$j) {
            Write-Leaf ($j * 2 - 1);
        }
    }
}

function Write-Trunk {
    param ([int] $TrunkHeight);

    $TrunkWidth = 1;
    $NumWhitespaces = ($TreeWidth - $TrunkWidth) / 2;
    $Whitespaces = " " * $NumWhitespaces;
    $Trunk = "#" * $TrunkWidth;
    for ($i = 0; $i -le $TrunkHeight; ++$i) {
        Write-Host "|" -NoNewline -ForegroundColor White -BackgroundColor Black;
        Write-Host -Object $Whitespaces -NoNewline -BackgroundColor Black;
        Write-Host -Object $Trunk -NoNewline -ForegroundColor Black -BackgroundColor DarkYellow;
        Write-Host -Object $Whitespaces -NoNewline -BackgroundColor Black;
        Write-Host "|" -ForegroundColor White -BackgroundColor Black;
    }
    
    Write-Host "+" -NoNewline -ForegroundColor White -BackgroundColor Black;
    Write-Host ("-" * $TreeWidth) -NoNewline -ForegroundColor White -BackgroundColor Black;
    Write-Host "+" -ForegroundColor White -BackgroundColor Black;
}

Write-Sky;
Write-Star;
Write-Leaves;
Write-Trunk ($TreeHeight / 2);