from strutils import parseInt

proc calculate_area(width: int, height: int): int =
    return width * height

let width = readLine(stdin)
let height = readLine(stdin)

echo calculate_area(parseInt(width), parseInt(height))