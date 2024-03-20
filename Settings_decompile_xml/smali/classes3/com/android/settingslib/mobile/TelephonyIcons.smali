.class public Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FIVE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FIVE_G_BASIC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FIVE_G_SA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FIVE_G_UWB:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FLIGHT_MODE_ICON:I

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ICON_1X:I

.field public static final ICON_3G:I

.field public static final ICON_4G:I

.field public static final ICON_4G_LTE:I

.field public static final ICON_4G_LTE_PLUS:I

.field public static final ICON_4G_PLUS:I

.field public static final ICON_5G:I

.field public static final ICON_5G_BASIC:I

.field public static final ICON_5G_E:I

.field public static final ICON_5G_PLUS:I

.field public static final ICON_5G_SA:I

.field public static final ICON_5G_UWB:I

.field public static final ICON_CWF:I

.field public static final ICON_E:I

.field public static final ICON_G:I

.field public static final ICON_H:I

.field public static final ICON_H_PLUS:I

.field public static final ICON_LTE:I

.field public static final ICON_LTE_PLUS:I

.field public static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_VOWIFI:I

.field public static final ICON_VOWIFI_CALLING:I

.field public static final LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final MOBILE_CALL_STRENGTH_ICONS:[I

.field public static final NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final VOWIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final VOWIFI_CALLING:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 30
    sget v0, Lcom/android/settingslib/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 32
    sget v0, Lcom/android/settingslib/R$drawable;->ic_lte_mobiledata:I

    sput v0, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE:I

    .line 33
    sget v1, Lcom/android/settingslib/R$drawable;->ic_lte_plus_mobiledata:I

    sput v1, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 34
    sget v2, Lcom/android/settingslib/R$drawable;->ic_g_mobiledata:I

    sput v2, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_G:I

    .line 35
    sget v3, Lcom/android/settingslib/R$drawable;->ic_e_mobiledata:I

    sput v3, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_E:I

    .line 36
    sget v4, Lcom/android/settingslib/R$drawable;->ic_h_mobiledata:I

    sput v4, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H:I

    .line 37
    sget v5, Lcom/android/settingslib/R$drawable;->ic_h_plus_mobiledata:I

    sput v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H_PLUS:I

    .line 38
    sget v6, Lcom/android/settingslib/R$drawable;->ic_3g_mobiledata:I

    sput v6, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_3G:I

    .line 39
    sget v7, Lcom/android/settingslib/R$drawable;->ic_4g_mobiledata:I

    sput v7, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G:I

    .line 40
    sget v8, Lcom/android/settingslib/R$drawable;->ic_4g_plus_mobiledata:I

    sput v8, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_PLUS:I

    .line 41
    sget v9, Lcom/android/settingslib/R$drawable;->ic_4g_lte_mobiledata:I

    sput v9, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_LTE:I

    .line 42
    sget v10, Lcom/android/settingslib/R$drawable;->ic_4g_lte_plus_mobiledata:I

    sput v10, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_LTE_PLUS:I

    .line 43
    sget v11, Lcom/android/settingslib/R$drawable;->ic_5g_e_mobiledata:I

    sput v11, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_E:I

    .line 44
    sget v12, Lcom/android/settingslib/R$drawable;->ic_1x_mobiledata:I

    sput v12, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_1X:I

    .line 45
    sget v13, Lcom/android/settingslib/R$drawable;->ic_5g_mobiledata:I

    sput v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G:I

    .line 46
    sget v14, Lcom/android/settingslib/R$drawable;->ic_5g_plus_mobiledata:I

    sput v14, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_PLUS:I

    .line 47
    sget v15, Lcom/android/settingslib/R$drawable;->ic_carrier_wifi:I

    sput v15, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_CWF:I

    .line 48
    sput v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_SA:I

    .line 49
    sput v13, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_BASIC:I

    move/from16 v16, v15

    .line 50
    sget v15, Lcom/android/settingslib/R$drawable;->ic_5g_uwb_mobiledata:I

    sput v15, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_UWB:I

    move/from16 v17, v15

    .line 51
    sget v15, Lcom/android/settingslib/R$drawable;->ic_vowifi:I

    sput v15, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_VOWIFI:I

    move/from16 v18, v15

    .line 52
    sget v15, Lcom/android/settingslib/R$drawable;->ic_vowifi_calling:I

    sput v15, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_VOWIFI_CALLING:I

    move/from16 v19, v15

    .line 54
    new-instance v15, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move/from16 v20, v14

    sget v14, Lcom/android/settingslib/R$string;->carrier_network_change_mode:I

    move/from16 v21, v13

    const-string v13, "CARRIER_NETWORK_CHANGE"

    move/from16 v22, v11

    const/4 v11, 0x0

    invoke-direct {v15, v13, v14, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 60
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v14, "3G"

    sget v11, Lcom/android/settingslib/R$string;->data_connection_3g:I

    invoke-direct {v13, v14, v11, v6}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 66
    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v11, "WFC"

    const/4 v14, 0x0

    invoke-direct {v6, v11, v14, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 71
    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v23, v6

    const-string v6, "Unknown"

    invoke-direct {v11, v6, v14, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 76
    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v14, "E"

    move-object/from16 v24, v11

    sget v11, Lcom/android/settingslib/R$string;->data_connection_edge:I

    invoke-direct {v6, v14, v11, v3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 82
    new-instance v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v11, "1X"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_cdma:I

    invoke-direct {v3, v11, v14, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 88
    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "G"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_gprs:I

    invoke-direct {v11, v12, v14, v2}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 94
    new-instance v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "H"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_3_5g:I

    invoke-direct {v2, v12, v14, v4}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 100
    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "H+"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_3_5g_plus:I

    invoke-direct {v4, v12, v14, v5}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 106
    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "4G"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_4g:I

    invoke-direct {v5, v12, v14, v7}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 112
    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "4G+"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_4g_plus:I

    invoke-direct {v7, v12, v14, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 118
    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "LTE"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_lte:I

    invoke-direct {v8, v12, v14, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 124
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "LTE+"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_lte_plus:I

    invoke-direct {v0, v12, v14, v1}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 130
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "4G LTE"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_4g_lte:I

    invoke-direct {v1, v12, v14, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 136
    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "4G LTE+"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_4g_lte_plus:I

    invoke-direct {v9, v12, v14, v10}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 142
    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "5Ge"

    sget v14, Lcom/android/settingslib/R$string;->data_connection_5ge_html:I

    move-object/from16 v25, v0

    move/from16 v0, v22

    invoke-direct {v10, v12, v14, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 148
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget v12, Lcom/android/settingslib/R$string;->data_connection_5g:I

    const-string v14, "5G"

    move-object/from16 v22, v8

    move/from16 v8, v21

    invoke-direct {v0, v14, v12, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v21, v0

    .line 154
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v26, v10

    const-string v10, "5G_PLUS"

    move-object/from16 v27, v9

    sget v9, Lcom/android/settingslib/R$string;->data_connection_5g_plus:I

    move-object/from16 v28, v1

    move/from16 v1, v20

    invoke-direct {v0, v10, v9, v1}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 160
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v9, "DataDisabled"

    sget v10, Lcom/android/settingslib/R$string;->cell_data_off_content_description:I

    move-object/from16 v20, v0

    const/4 v0, 0x0

    invoke-direct {v1, v9, v10, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 166
    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v10, "NotDefaultData"

    move-object/from16 v29, v1

    sget v1, Lcom/android/settingslib/R$string;->not_default_data_content_description:I

    invoke-direct {v9, v10, v1, v0}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 172
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "CWF"

    sget v10, Lcom/android/settingslib/R$string;->data_connection_carrier_wifi:I

    move-object/from16 v30, v9

    move/from16 v9, v16

    invoke-direct {v0, v1, v10, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 181
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-direct {v0, v14, v12, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FIVE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 186
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "5GBasic"

    sget v9, Lcom/android/settingslib/R$string;->data_connection_5g_basic:I

    invoke-direct {v0, v1, v9, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 191
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "5GUWB"

    sget v9, Lcom/android/settingslib/R$string;->data_connection_5g_uwb:I

    move/from16 v10, v17

    invoke-direct {v0, v1, v9, v10}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FIVE_G_UWB:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 196
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v9, "5GSA"

    sget v10, Lcom/android/settingslib/R$string;->data_connection_5g_sa:I

    invoke-direct {v1, v9, v10, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FIVE_G_SA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 201
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v8, "VoWIFI"

    move/from16 v9, v18

    const/4 v10, 0x0

    invoke-direct {v1, v8, v10, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->VOWIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 206
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v8, "VoWIFICall"

    move/from16 v9, v19

    invoke-direct {v1, v8, v10, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->VOWIFI_CALLING:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    const-string v8, "carrier_network_change"

    .line 215
    invoke-interface {v1, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "3g"

    .line 216
    invoke-interface {v1, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "wfc"

    move-object/from16 v9, v23

    .line 217
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "unknown"

    move-object/from16 v9, v24

    .line 218
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "e"

    .line 219
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "1x"

    .line 220
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "g"

    .line 221
    invoke-interface {v1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "h"

    .line 222
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "h+"

    .line 223
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4g"

    .line 224
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4g+"

    .line 225
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4glte"

    move-object/from16 v3, v28

    .line 226
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4glte+"

    move-object/from16 v3, v27

    .line 227
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5ge"

    move-object/from16 v3, v26

    .line 228
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lte"

    move-object/from16 v3, v22

    .line 229
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lte+"

    move-object/from16 v3, v25

    .line 230
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5g"

    move-object/from16 v3, v21

    .line 231
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5g_plus"

    move-object/from16 v3, v20

    .line 232
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5guwb"

    .line 233
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datadisable"

    move-object/from16 v2, v29

    .line 234
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notdefaultdata"

    move-object/from16 v2, v30

    .line 235
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget v0, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_0:I

    sget v1, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_1:I

    sget v2, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_2:I

    sget v3, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_3:I

    sget v4, Lcom/android/settingslib/R$drawable;->ic_mobile_call_strength_4:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    return-void
.end method
