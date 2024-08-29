import 'package:flutter/material.dart';

void showAddStockOverlay(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AddStockOverlay();
    },
  );
}

class AddStockOverlay extends StatefulWidget {
  @override
  _AddStockOverlayState createState() => _AddStockOverlayState();
}

class _AddStockOverlayState extends State<AddStockOverlay> {
  String selectedProduct = 'Carotte';
  String selectedWarehouse = 'Keur Massar';
  String selectedOperator = 'Orange Money';
  bool isDelivery = false;
  int quantity = 1;
  int stayDuration = 7;
  int totalAmount = 675;
  String phoneNumber = '';

  int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (currentStep == 1) buildProductSelectionStep(),
            if (currentStep == 2) buildPaymentStep(),
            if (currentStep == 3) buildSuccessMessageStep(),
          ],
        ),
      ),
    );
  }

  Widget buildProductSelectionStep() {
    return Column(
      children: [
        // Product Dropdown
        DropdownButtonFormField<String>(
          value: selectedProduct,
          decoration: InputDecoration(
            labelText: 'Produit',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          dropdownColor: Colors.grey[850],
          style: TextStyle(color: Colors.white),
          items: [
            DropdownMenuItem(value: 'Carotte', child: Text('Carotte')),
            DropdownMenuItem(
                value: 'Pomme de Terre', child: Text('Pomme de Terre')),
            DropdownMenuItem(value: 'Arachide', child: Text('Arachide')),
          ],
          onChanged: (value) {
            setState(() {
              selectedProduct = value!;
            });
          },
        ),
        SizedBox(height: 16),
        // Quantity Input
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Quantité (Kg)',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            quantity = int.tryParse(value) ?? 1;
          },
        ),
        SizedBox(height: 16),
        // Warehouse Dropdown
        DropdownButtonFormField<String>(
          value: selectedWarehouse,
          decoration: InputDecoration(
            labelText: 'Entrepôt',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          dropdownColor: Colors.grey[850],
          style: TextStyle(color: Colors.white),
          items: [
            DropdownMenuItem(value: 'Keur Massar', child: Text('Keur Massar')),
            DropdownMenuItem(value: 'Rufisque', child: Text('Rufisque')),
            DropdownMenuItem(value: 'Thiaroye', child: Text('Thiaroye')),
          ],
          onChanged: (value) {
            setState(() {
              selectedWarehouse = value!;
            });
          },
        ),
        SizedBox(height: 16),
        // Stay Duration Input
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Séjour (jours)',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            stayDuration = int.tryParse(value) ?? 7;
          },
        ),
        SizedBox(height: 16),
        // Delivery Switch
        SwitchListTile(
          title: Text('Livraison', style: TextStyle(color: Colors.white)),
          value: isDelivery,
          onChanged: (value) {
            setState(() {
              isDelivery = value;
            });
          },
          activeColor: Colors.green,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.grey[600],
        ),
        SizedBox(height: 16),
        // Total Amount Display
        Text(
          'Total: $totalAmount f',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 16),
        // Next Button
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentStep = 2;
            });
          },
          style: ElevatedButton.styleFrom(
            iconColor: Colors.red, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Text('Suivant'),
          ),
        ),
      ],
    );
  }

  Widget buildPaymentStep() {
    return Column(
      children: [
        // Operator Dropdown
        DropdownButtonFormField<String>(
          value: selectedOperator,
          decoration: InputDecoration(
            labelText: 'Opérateur',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          dropdownColor: Colors.grey[850],
          style: TextStyle(color: Colors.white),
          items: [
            DropdownMenuItem(
                value: 'Orange Money', child: Text('Orange Money')),
            DropdownMenuItem(value: 'Wave', child: Text('Wave')),
            DropdownMenuItem(value: 'Free Money', child: Text('Free Money')),
          ],
          onChanged: (value) {
            setState(() {
              selectedOperator = value!;
            });
          },
        ),
        SizedBox(height: 16),
        // Phone Number Input
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: 'Numéro de téléphone',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            setState(() {
              phoneNumber = value;
            });
          },
        ),
        SizedBox(height: 16),
        // Total Amount Display
        Text(
          'Total: $totalAmount f',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 16),
        // Pay Button
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentStep = 3;
            });
          },
          style: ElevatedButton.styleFrom(
            iconColor: Colors.red, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Text('Payer'),
          ),
        ),
      ],
    );
  }

  Widget buildSuccessMessageStep() {
    return Column(
      children: [
        Icon(Icons.check_circle_outline, size: 100, color: Colors.green),
        SizedBox(height: 16),
        Text(
          'Opération réussie',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        SizedBox(height: 16),
        // Ok Button
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the overlay
          },
          style: ElevatedButton.styleFrom(
            iconColor: Colors.red, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Text('Ok'),
          ),
        ),
      ],
    );
  }
}
