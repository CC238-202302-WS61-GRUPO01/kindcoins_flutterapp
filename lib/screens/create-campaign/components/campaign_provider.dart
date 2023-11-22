import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/models/campaign_request.dart';
import 'package:provider/provider.dart';

class CampaignProvider extends ChangeNotifier {
  CampaignRequest campaignRequest = CampaignRequest();

  void updateCampaignRequest(CampaignRequest updatedCampaignRequest) {
    campaignRequest = updatedCampaignRequest;
    notifyListeners();
  }
}

final campaignProvider = Provider<CampaignProvider>(
  create: (BuildContext context) => CampaignProvider(),
);
