namespace Kata {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;  // MResetZ için gerekli kütüphane

    @EntryPoint()
    operation SimpleMeasurementDemo() : Unit {
        use q = Qubit();
        // Prepare the qubit in the superposition state |𝜓❭ = 0.6 |0❭ + 0.8 |1❭
        Ry(2.0 * ArcTan2(0.8, 0.6), q);
        Message("Qubit in state |𝜓❭:");
        DumpMachine();

        // Ölçüm ve sıfırlama işlemi
        let outcome = MResetZ(q);
        Message($"The measurement outcome is {outcome}.");
        Message("Post-measurement state of the qubit:");
        DumpMachine();
    }
}
