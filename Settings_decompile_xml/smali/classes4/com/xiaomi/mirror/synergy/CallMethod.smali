.class Lcom/xiaomi/mirror/synergy/CallMethod;
.super Ljava/lang/Object;


# static fields
.field static final ARG_AP_CALLBACK:Ljava/lang/String; = "apCallback"

.field static final ARG_AP_SSID:Ljava/lang/String; = "apSsid"

.field static final ARG_CLIP_DATA:Ljava/lang/String; = "clipData"

.field static final ARG_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field static final ARG_EXTENSION:Ljava/lang/String; = "extension"

.field static final ARG_EXTRA_STRING:Ljava/lang/String; = "extra"

.field static final ARG_ID:Ljava/lang/String; = "id"

.field static final ARG_TITLE:Ljava/lang/String; = "title"

.field static final ARG_URI:Ljava/lang/String; = "uri"

.field static final CALL_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.xiaomi.mirror.callprovider"

.field static final METHOD_CHOOSE_FILE_FROM_SYNERGY:Ljava/lang/String; = "chooseFileFromSynergy"

.field static final METHOD_CONNECT_SAME_ACCOUNT_AP:Ljava/lang/String; = "connectSameAccountAp"

.field static final METHOD_GET:Ljava/lang/String; = "get"

.field static final METHOD_GET_ALIVE_BINDER:Ljava/lang/String; = "getAliveBinder"

.field static final METHOD_GET_CALL_RELAY_SERVICE:Ljava/lang/String; = "getCallRelayService"

.field static final METHOD_GET_UPDATE_ICON:Ljava/lang/String; = "getUpdateIcon"

.field static final METHOD_IS_FLOAT_WINDOW_SHOW:Ljava/lang/String; = "isFloatWindowShow"

.field static final METHOD_IS_P2P_WORKING:Ljava/lang/String; = "isP2PWorking"

.field static final METHOD_IS_SUPPORT_TAKE_PHOTO:Ljava/lang/String; = "isSupportTakePhoto"

.field static final METHOD_IS_SYNERGY_ENABLE:Ljava/lang/String; = "isSynergyEnable"

.field static final METHOD_OPEN_DIRECT:Ljava/lang/String; = "openDirect"

.field static final METHOD_OPEN_MI_CLOUD_ON_SYNERGY:Ljava/lang/String; = "openMiCloudOnSynergy"

.field static final METHOD_OPEN_ON_SYNERGY:Ljava/lang/String; = "openOnSynergy"

.field static final METHOD_PERFORM_RELAY_ICON_CLICK:Ljava/lang/String; = "performRelayIconClick"

.field static final METHOD_QUERY_OPEN_ON_SYNERGY:Ljava/lang/String; = "queryOpenOnSynergy"

.field static final METHOD_QUERY_SAME_ACCOUNT_AP:Ljava/lang/String; = "querySameAccountAp"

.field static final METHOD_REGISTER_AP_CALLBACK:Ljava/lang/String; = "registerApCallback"

.field static final METHOD_SAVE_TO_SYNERGY:Ljava/lang/String; = "saveToSynergy"

.field static final METHOD_TAKE_PHOTO_CANCEL:Ljava/lang/String; = "takePhotoCancel"

.field static final METHOD_TAKE_PHOTO_FROM_SYNERGY:Ljava/lang/String; = "takePhotoFromSynergy"

.field static final METHOD_UNREGISTER_AP_CALLBACK:Ljava/lang/String; = "unRegisterApCallback"

.field static final METHOD_UPDATE_TITLE:Ljava/lang/String; = "updateTitle"

.field static final RESULT_AP_IS5G:Ljava/lang/String; = "apId5G"

.field static final RESULT_AP_SSID:Ljava/lang/String; = "apSsid"

.field static final RESULT_BATTERY_PERCENT:Ljava/lang/String; = "batteryPercent"

.field static final RESULT_BINDER:Ljava/lang/String; = "binder"

.field static final RESULT_CLIP_DATA:Ljava/lang/String; = "clipData"

.field static final RESULT_ENABLE_BOOLEAN:Ljava/lang/String; = "enable"

.field static final RESULT_FILE_DESCRIPTOR:Ljava/lang/String; = "fileDescriptor"

.field static final RESULT_ICON:Ljava/lang/String; = "icon"

.field static final RESULT_ID:Ljava/lang/String; = "id"

.field static final RESULT_IS_FLOAT_WINDOW_SHOW:Ljava/lang/String; = "isFloatWindowShow"

.field static final RESULT_OPTION_LIST:Ljava/lang/String; = "optionList"

.field static final RESULT_SOFTAP_STATE:Ljava/lang/String; = "softApState"

.field static final RESULT_TITLE:Ljava/lang/String; = "title"

.field static final RESULT_VALUE:Ljava/lang/String; = "value"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 0
    const-string v0, "com.xiaomi.mirror.callprovider"

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
