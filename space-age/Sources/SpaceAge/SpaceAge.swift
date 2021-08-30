struct SpaceAge {
    var seconds: Double

    var onEarth: Double    { seconds / 31557600 }
    var onMercury: Double  { onEarth / 0.2408467 }
    var onVenus: Double    { onEarth / 0.61519726 }
    var onMars: Double     { onEarth / 1.8808158 }
    var onJupiter: Double  { onEarth / 11.862615 }
    var onSaturn: Double   { onEarth / 29.447498 }
    var onUranus: Double   { onEarth / 84.016846 }
    var onNeptune: Double  { onEarth /  164.79132 }

    init(_ n: Double) {
        seconds = n
    }
}