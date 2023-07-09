import java.util.stream.Collectors

fun main(args: Array<String>) {
    // Create a stream of numbers
    val numbers = listOf(1,2,3,4,5,6,7,8,9,10).stream()
    val evens = numbers.filter { it -> it % 2 == 0}
    val evenSquares = evens.map{ it -> it * it }
    val result = evenSquares.collect(Collectors.toList())
    println(result)

    println(evens)
    println(evenSquares)
}