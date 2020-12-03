/*

double min1G_c;
  double max1G_c;
  double min1H_c;
  double max1H_c;
  double min1A_c;
  double max1A_c;
  double min3A_c;
  double max3A_c;
  double min1Y_c;
  double max1Y_c;
  double min5Y_c;
  double max5Y_c;

  int min1G_d;
  int max1G_d;
  int min1H_d;
  int max1H_d;
  int min1A_d;
  int max1A_d;
  int min3A_d;
  int max3A_d;
  int min1Y_d;
  int max1Y_d;
  int min5Y_d;
  int max5Y_d;





setState(() {

      data1G = extractData["1G"];
      data1H = extractData["1H"];
      data1A = extractData["1A"];
      data3A = extractData["3A"];
      data1Y = extractData["1Y"];
      data5Y = extractData["5Y"];



      //min-max value for c:

      data1G.sort((a, b) => a['c'].compareTo(b['c']));
      min1G_c = data1G.first['c'];
      max1G_c = data1G.last['c'];

      data1H.sort((a, b) => a['c'].compareTo(b['c']));
      min1H_c = data1H.first['c'];
      max1H_c = data1H.last['c'];

      data1A.sort((a, b) => a['c'].compareTo(b['c']));
      min1A_c = data1A.first['c'];
      max1A_c = data1A.last['c'];

      data3A.sort((a, b) => a['c'].compareTo(b['c']));
      min3A_c = data3A.first['c'];
      max3A_c = data3A.last['c'];

      data1Y.sort((a, b) => a['c'].compareTo(b['c']));
      min1Y_c = data1Y.first['c'];
      max1Y_c = data1Y.last['c'];

      data5Y.sort((a, b) => a['c'].compareTo(b['c']));
      min5Y_c = data5Y.first['c'];
      max5Y_c = data5Y.last['c'];

      //min-max value for d:

      data1H.sort((a, b) => a['d'].compareTo(b['d']));
      min1H_d = data1H.first['d'];
      max1H_d = data1H.last['d'];

      data1A.sort((a, b) => a['d'].compareTo(b['d']));
      min1A_d = data1A.first['d'];
      max1A_d = data1A.last['d'];

      data3A.sort((a, b) => a['d'].compareTo(b['d']));
      min3A_d = data3A.first['d'];
      max3A_d = data3A.last['d'];

      data1Y.sort((a, b) => a['d'].compareTo(b['d']));
      min1Y_d = data1Y.first['d'];
      max1Y_d = data1Y.last['d'];

      data5Y.sort((a, b) => a['d'].compareTo(b['d']));
      min5Y_d = data5Y.first['d'];
      max5Y_d = data5Y.last['d'];

      print("Min 5Y d: ${min5Y_d.toString()}");
      print("Max 5Y d: ${max5Y_d.toString()}");
    });
 */