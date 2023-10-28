import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'create_campaign_3.dart';

class CampaignCreationPage2 extends StatefulWidget {
  @override
  _CampaignCreationPage2State createState() => _CampaignCreationPage2State();
}

class _CampaignCreationPage2State extends State<CampaignCreationPage2> {
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _goalController = TextEditingController();
  ValueNotifier<int> _goalTextLengthNotifier = ValueNotifier<int>(0);
  bool _isMoneySelected = false;
  bool _isFoodSelected = false;
  bool _isClothingSelected = false;

  void _goBack() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _goalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBFFFD),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Paso 2 de 5"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Crear campaña',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _goBack();
                  },
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Paso 2 de 5',
                    style: TextStyle(
                      color: Color(0xFF687781),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Descripcion de la campaña',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Container(
              height: 83,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: Color(0xFFDCDFE6),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLength: 100,
                  maxLines: null, // Allow multiple lines
                  controller: _descriptionController,
                  onChanged: (value) {
                    setState(
                            () {}); // Rebuild the UI to display character count
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    counterText:
                    '${_descriptionController.text.length}/100', // Display character count
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              'Tipos de donaciones que quieres recibir:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildDonationTypeItem(
                    icon: Icons.attach_money,
                    label: 'Dinero',
                    isSelected: _isMoneySelected,
                    onTap: () {
                      setState(() {
                        _isMoneySelected = !_isMoneySelected;
                      });
                    }),
                buildDonationTypeItem(
                    icon: Icons.fastfood,
                    label: 'Comida',
                    isSelected: _isFoodSelected,
                    onTap: () {
                      setState(() {
                        _isFoodSelected = !_isFoodSelected;
                      });
                    }),
                buildDonationTypeItem(
                    icon: Icons.shopping_cart,
                    label: 'Ropa',
                    isSelected: _isClothingSelected,
                    onTap: () {
                      setState(() {
                        _isClothingSelected = !_isClothingSelected;
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ingrese meta de dinero',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
                Text(
                  '${_goalController.text.length}/100',
                  style: TextStyle(
                    color: Color(0xFFC0C4CC),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Opacity(
              opacity: _isMoneySelected ? 1.0 : 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFDCDFE6),
                  ),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(
                          r'^\d{1,10}(\.\d{0,2})?$')), // Limit input to numbers with max of 10 characters and allow up to 2 decimal places
                    ],
                    keyboardType:
                    TextInputType.numberWithOptions(decimal: true),
                    controller: _goalController,
                    onChanged: (value) {
                      _goalTextLengthNotifier.value = value.length;
                      setState(() {});
                    },
                    enabled: _isMoneySelected,
                    style: TextStyle(
                      color: _isMoneySelected ? Colors.black : Colors.grey[400],
                    ),
                    decoration: InputDecoration(
                      hintText: 'Solo numeros y decimales(10 caracteres)',
                      hintStyle: TextStyle(
                        color: Color(0xFFC0C4CC),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReceptionConfiguration()),
                    );
                  },
                  child: Text('Siguiente'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFDE59),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDonationTypeItem(
      {required IconData icon,
        required String label,
        required bool isSelected,
        required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: isSelected ? Color(0xFFFFDE59) : Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: 1,
                color: Color(0xFFDCDFE6),
              ),
            ),
            child: Icon(
              icon,
              color: isSelected ? Colors.white : Color(0xFF606266),
              size: 24,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Color(0xFFFFDE59) : Color(0xFF606266),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}