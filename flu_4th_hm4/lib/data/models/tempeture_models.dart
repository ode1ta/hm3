class TempetureModels {
  TempetureModels({required this.latitude, required this.longitude, required this.currentWeatherUnits});

  final double latitude;
  final double longitude;
  final String currentWeatherUnits;


factory TempetureModels.fromJson(Map<String, dynamic> json) {
  return TempetureModels(
    latitude: json['latitude'], 
    longitude: json['longitude'],
    currentWeatherUnits: json['current_weather_units']['temperature'],
    
    );
}
}