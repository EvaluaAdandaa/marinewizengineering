import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int getPreviousIndex(
  int secuencia,
  List<VwRforcaAtributosRow> plforcas,
) {
  for (int i = 0; i < plforcas.length; i++) {
    if (plforcas[i].secuencia == secuencia) {
      return i - 1;
    }
  }
  return 0;
}

int getIndex(
  int plforcaid,
  List<PlforcaRow> plforcas,
) {
  for (int i = 0; i < plforcas.length; i++) {
    if (plforcas[i].plforcaid == plforcaid) {
      return i;
    }
  }
  return 0;
}

int getPreviousIndexOLD(
  int secuencia,
  List<PlforcaRow> plforcas,
) {
  for (int i = 0; i < plforcas.length; i++) {
    if (plforcas[i].secuencia == secuencia) {
      return i - 1;
    }
  }
  return 0;
}
