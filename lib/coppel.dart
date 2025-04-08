import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoppelEmprendeHome extends StatelessWidget {
  const CoppelEmprendeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text("Coppel Emprende"),
        backgroundColor: const Color(0xFF004481),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Registra a microempresarios que estén interesados en capacitarse",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Icon(Icons.person_add_alt_1, size: 48, color: Color(0xFF004481)),
                    const SizedBox(height: 8),
                    Text(
                      "Registrar Microempresario",
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF004481),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                        // TODO: Navegar al formulario de registro
                      },
                      child: const Text("Iniciar Registro"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: const Icon(Icons.history, color: Color(0xFF004481)),
                title: Text("Mis Referencias", style: GoogleFonts.poppins()),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // TODO: Navegar al historial de registros
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
