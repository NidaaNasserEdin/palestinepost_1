class Package {
  int? id;
  String? name;
  String? trackingNumber;
  String? phone;
  String? status;
  Null? statusDescription;
  String? address;
  int? areaId;

  Package({
    this.id,
    this.name,
    this.trackingNumber,
    this.phone,
    this.status,
    this.statusDescription,
    this.address,
    this.areaId,
  });

  Package.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    trackingNumber = json['tracking_number'];
    phone = json['phone'];
    status = json['status'];
    statusDescription = json['StatusDescription'];
    address = json['address'];
    areaId = json['area_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tracking_number'] = this.trackingNumber;
    data['phone'] = this.phone;
    data['status'] = this.status;
    data['StatusDescription'] = this.statusDescription;
    data['address'] = this.address;
    data['area_id'] = this.areaId;
    return data;
  }
}
