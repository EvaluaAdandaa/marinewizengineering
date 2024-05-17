import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, [
  bool isList = false,
]) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    switch (paramType) {
      case ParamType.int:
        return param.toString();
      case ParamType.double:
        return param.toString();
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param ? 'true' : 'false';
      case ParamType.DateTime:
        return (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        return dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        return (param as LatLng).serialize();
      case ParamType.Color:
        return (param as Color).toCssString();
      case ParamType.FFPlace:
        return placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        return uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        return json.encode(param);

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        return null;
    }
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList,
) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(p, paramType, false))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case VRpCotizacionesRow:
            return VRpCotizacionesRow(data);
          case HveqdlRow:
            return HveqdlRow(data);
          case UsverRow:
            return UsverRow(data);
          case BotRow:
            return BotRow(data);
          case VTerBotdocRow:
            return VTerBotdocRow(data);
          case VwMweCotizacionesRow:
            return VwMweCotizacionesRow(data);
          case VPropiedadesRow:
            return VPropiedadesRow(data);
          case SegUgmembersRow:
            return SegUgmembersRow(data);
          case FaceveRow:
            return FaceveRow(data);
          case SegAuditRow:
            return SegAuditRow(data);
          case VwMweOserviciodetRow:
            return VwMweOserviciodetRow(data);
          case VClientesxclasificadorRow:
            return VClientesxclasificadorRow(data);
          case VTerOseantRow:
            return VTerOseantRow(data);
          case ExcaRow:
            return ExcaRow(data);
          case VTerFacdRow:
            return VTerFacdRow(data);
          case VSerOservicioRow:
            return VSerOservicioRow(data);
          case VCtzxclasificadorproductoRow:
            return VCtzxclasificadorproductoRow(data);
          case CajaCajRow:
            return CajaCajRow(data);
          case CajaCajcRow:
            return CajaCajcRow(data);
          case FacdocRow:
            return FacdocRow(data);
          case PaiRow:
            return PaiRow(data);
          case PtEadRow:
            return PtEadRow(data);
          case PtEntpRow:
            return PtEntpRow(data);
          case HveqdRow:
            return HveqdRow(data);
          case RsdRiderRow:
            return RsdRiderRow(data);
          case RforcaoRow:
            return RforcaoRow(data);
          case XxplforcaPlforid2Row:
            return XxplforcaPlforid2Row(data);
          case UsCgsRow:
            return UsCgsRow(data);
          case SegLockingRow:
            return SegLockingRow(data);
          case RsdVRiderorderitemsRow:
            return RsdVRiderorderitemsRow(data);
          case VRpMescotizacionesRow:
            return VRpMescotizacionesRow(data);
          case CtzRow:
            return CtzRow(data);
          case PtClaRow:
            return PtClaRow(data);
          case VOsedetElegirRow:
            return VOsedetElegirRow(data);
          case PtCatRow:
            return PtCatRow(data);
          case TerevRow:
            return TerevRow(data);
          case TerclaRow:
            return TerclaRow(data);
          case VwMweOservicioRow:
            return VwMweOservicioRow(data);
          case TercatRow:
            return TercatRow(data);
          case PlforcaoRow:
            return PlforcaoRow(data);
          case GentableRow:
            return GentableRow(data);
          case LiqtmRow:
            return LiqtmRow(data);
          case AafechasRow:
            return AafechasRow(data);
          case VTareasgeneralRow:
            return VTareasgeneralRow(data);
          case BotevRow:
            return BotevRow(data);
          case RsdWharehouseRow:
            return RsdWharehouseRow(data);
          case CajaRcapRow:
            return CajaRcapRow(data);
          case LiqpRow:
            return LiqpRow(data);
          case VRcajaxoservicioRow:
            return VRcajaxoservicioRow(data);
          case OseantRow:
            return OseantRow(data);
          case DepRow:
            return DepRow(data);
          case VServiciostarifasRow:
            return VServiciostarifasRow(data);
          case ClaocrolRow:
            return ClaocrolRow(data);
          case PmworkersRow:
            return PmworkersRow(data);
          case VRpMesoserviciosRow:
            return VRpMesoserviciosRow(data);
          case OseitRow:
            return OseitRow(data);
          case ContactsRow:
            return ContactsRow(data);
          case RpPvEventosfinancierosRow:
            return RpPvEventosfinancierosRow(data);
          case OcodRow:
            return OcodRow(data);
          case VDiametrosRow:
            return VDiametrosRow(data);
          case VIcFacturasRow:
            return VIcFacturasRow(data);
          case TarRow:
            return TarRow(data);
          case VwMweCotizacionesdetRow:
            return VwMweCotizacionesdetRow(data);
          case TaskdRow:
            return TaskdRow(data);
          case VOcousrrolesRow:
            return VOcousrrolesRow(data);
          case TerdocRow:
            return TerdocRow(data);
          case UsCgsrRow:
            return UsCgsrRow(data);
          case CajaRcadRow:
            return CajaRcadRow(data);
          case VDiametrosgenRow:
            return VDiametrosgenRow(data);
          case TaskcRow:
            return TaskcRow(data);
          case PrjRow:
            return PrjRow(data);
          case OsedRow:
            return OsedRow(data);
          case VwMweFormulariosRow:
            return VwMweFormulariosRow(data);
          case PropertiescontactsRow:
            return PropertiescontactsRow(data);
          case VTercatRow:
            return VTercatRow(data);
          case TgenRow:
            return TgenRow(data);
          case ReqdocRow:
            return ReqdocRow(data);
          case UsvarRow:
            return UsvarRow(data);
          case CtzdocRow:
            return CtzdocRow(data);
          case OsedbitRow:
            return OsedbitRow(data);
          case RemiRow:
            return RemiRow(data);
          case VwCiaRow:
            return VwCiaRow(data);
          case VLiqpRow:
            return VLiqpRow(data);
          case SaasPlndRow:
            return SaasPlndRow(data);
          case SaasCueuRow:
            return SaasCueuRow(data);
          case BotequRow:
            return BotequRow(data);
          case VOserviciosxuninegocioRow:
            return VOserviciosxuninegocioRow(data);
          case GgTarRow:
            return GgTarRow(data);
          case OseeveRow:
            return OseeveRow(data);
          case SaasPlnRow:
            return SaasPlnRow(data);
          case CtzdRow:
            return CtzdRow(data);
          case VRpJobticketRow:
            return VRpJobticketRow(data);
          case VSerFacturasRow:
            return VSerFacturasRow(data);
          case RpPvEventosfinancierosfechaRow:
            return RpPvEventosfinancierosfechaRow(data);
          case OseRow:
            return OseRow(data);
          case VMaterialesRow:
            return VMaterialesRow(data);
          case MplRow:
            return MplRow(data);
          case RemidRow:
            return RemidRow(data);
          case SaasMndRow:
            return SaasMndRow(data);
          case VTerOseitRow:
            return VTerOseitRow(data);
          case RsdVRiderordRow:
            return RsdVRiderordRow(data);
          case VTerOsedocRow:
            return VTerOsedocRow(data);
          case VContactosterceroRow:
            return VContactosterceroRow(data);
          case AnuRow:
            return AnuRow(data);
          case RsdHaulorderRow:
            return RsdHaulorderRow(data);
          case RsdUserRow:
            return RsdUserRow(data);
          case MpldtRow:
            return MpldtRow(data);
          case GdDocRow:
            return GdDocRow(data);
          case TtfdRow:
            return TtfdRow(data);
          case HveqRow:
            return HveqRow(data);
          case RsdRiderorderRow:
            return RsdRiderorderRow(data);
          case RsdOrderitemRow:
            return RsdOrderitemRow(data);
          case OsedtRow:
            return OsedtRow(data);
          case PtEntRow:
            return PtEntRow(data);
          case CiuRow:
            return CiuRow(data);
          case RforcaRow:
            return RforcaRow(data);
          case TaskRow:
            return TaskRow(data);
          case PmadminsRow:
            return PmadminsRow(data);
          case FacdRow:
            return FacdRow(data);
          case VwOcodRow:
            return VwOcodRow(data);
          case VTerCtzdocRow:
            return VTerCtzdocRow(data);
          case VRcajaOseFacturaRow:
            return VRcajaOseFacturaRow(data);
          case BotequpstRow:
            return BotequpstRow(data);
          case LiqtRow:
            return LiqtRow(data);
          case SaasCueRow:
            return SaasCueRow(data);
          case OsedeRow:
            return OsedeRow(data);
          case PorpertyownersRow:
            return PorpertyownersRow(data);
          case VTerBotevdRow:
            return VTerBotevdRow(data);
          case VRpOservicioRow:
            return VRpOservicioRow(data);
          case VwTerRow:
            return VwTerRow(data);
          case TtfRow:
            return TtfRow(data);
          case TardRow:
            return TardRow(data);
          case VTerReqdocRow:
            return VTerReqdocRow(data);
          case RsdHaulRow:
            return RsdHaulRow(data);
          case RsdSupplierRow:
            return RsdSupplierRow(data);
          case ReqeveRow:
            return ReqeveRow(data);
          case VProveedoresRow:
            return VProveedoresRow(data);
          case VwRforcaAtributosRow:
            return VwRforcaAtributosRow(data);
          case FacRow:
            return FacRow(data);
          case VTerTaskdRow:
            return VTerTaskdRow(data);
          case MrcRow:
            return MrcRow(data);
          case SerRow:
            return SerRow(data);
          case ClaocRow:
            return ClaocRow(data);
          case VLongitudesRow:
            return VLongitudesRow(data);
          case UsrRow:
            return UsrRow(data);
          case RsdHaulierRow:
            return RsdHaulierRow(data);
          case LiqRow:
            return LiqRow(data);
          case VEquiposcomponentesRow:
            return VEquiposcomponentesRow(data);
          case PlforcaRow:
            return PlforcaRow(data);
          case RsdVRidercontRow:
            return RsdVRidercontRow(data);
          case VClientesRow:
            return VClientesRow(data);
          case PlforRow:
            return PlforRow(data);
          case UsrubiRow:
            return UsrubiRow(data);
          case SegUgrightsRow:
            return SegUgrightsRow(data);
          case BotdocRow:
            return BotdocRow(data);
          case VBotesRow:
            return VBotesRow(data);
          case RsdContactRow:
            return RsdContactRow(data);
          case OsedocRow:
            return OsedocRow(data);
          case VSerCotizacionesRow:
            return VSerCotizacionesRow(data);
          case PtEstRow:
            return PtEstRow(data);
          case CajaRcaRow:
            return CajaRcaRow(data);
          case MpldlRow:
            return MpldlRow(data);
          case TicketRow:
            return TicketRow(data);
          case VRpMesoperacionRow:
            return VRpMesoperacionRow(data);
          case VRpFacturasRow:
            return VRpFacturasRow(data);
          case CtzeveRow:
            return CtzeveRow(data);
          case MpldRow:
            return MpldRow(data);
          case VCotizacionesxuninegocioRow:
            return VCotizacionesxuninegocioRow(data);
          case BotevdRow:
            return BotevdRow(data);
          case CajaApcRow:
            return CajaApcRow(data);
          case SegUggroupsRow:
            return SegUggroupsRow(data);
          case SaasCiaRow:
            return SaasCiaRow(data);
          case SaasCiasRow:
            return SaasCiasRow(data);
          case UsrjrqRow:
            return UsrjrqRow(data);
          case ReqRow:
            return ReqRow(data);
          case PtEveRow:
            return PtEveRow(data);
          case VCotizacionesxclasificadorRow:
            return VCotizacionesxclasificadorRow(data);
          case RsdOrderRow:
            return RsdOrderRow(data);
          case SegSettingsRow:
            return SegSettingsRow(data);
          case PropertiesRow:
            return PropertiesRow(data);
          case RsdItemRow:
            return RsdItemRow(data);
          case CajaCcaRow:
            return CajaCcaRow(data);
          case PmworkerspropRow:
            return PmworkerspropRow(data);
          case VwCtzdRow:
            return VwCtzdRow(data);
          case VIcFacturasV2Row:
            return VIcFacturasV2Row(data);
          case PtEntpvRow:
            return PtEntpvRow(data);
          case VTerTerdocRow:
            return VTerTerdocRow(data);
          case TerRow:
            return TerRow(data);
          case OcoRow:
            return OcoRow(data);
          case TercttRow:
            return TercttRow(data);
          case VRpMesfacturasRow:
            return VRpMesfacturasRow(data);
          case RforRow:
            return RforRow(data);
          case GdDocdRow:
            return GdDocdRow(data);
          case VRpOcomprasRow:
            return VRpOcomprasRow(data);
          case RsdSuptypeRow:
            return RsdSuptypeRow(data);
          default:
            return null;
        }

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
