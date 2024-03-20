.class public Lcom/android/settings/device/DeviceParamsInitHelper;
.super Ljava/lang/Object;
.source "DeviceParamsInitHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    return-void
.end method


# virtual methods
.method public initCameraParams(Z)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    const-string v1, "DeviceParamsInitHelper"

    if-nez v0, :cond_0

    const-string p0, "initCameraParams remoteService is null"

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "UTF-8"

    if-eqz v2, :cond_1

    :try_start_1
    const-string/jumbo v4, "miId"

    .line 92
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/device/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "device"

    .line 94
    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "model"

    if-eqz p1, :cond_2

    .line 95
    sget-object v4, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    :cond_2
    invoke-static {v4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "product"

    .line 96
    sget-object v2, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "UnsupportedEncodingException"

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "langType"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object p1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->STANDARD_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    .line 105
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getPhoneConfigurationType()Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string/jumbo v2, "unable to get phoneConfigurationType"

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    sget-object v1, Lcom/android/settings/device/DeviceParamsInitHelper$1;->$SwitchMap$com$android$settings$device$MiuiAboutPhoneUtils$PhoneConfigurationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "0"

    const/4 v2, 0x1

    const-string/jumbo v3, "version"

    if-eq p1, v2, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    .line 122
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p1, "2"

    .line 119
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string p1, "1"

    .line 116
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string/jumbo p1, "ro.miui.region"

    const-string v1, "CN"

    .line 124
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "region"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "type"

    const-string v1, "camera"

    .line 125
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :try_start_3
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    invoke-interface {p0, v2, v0}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->getDeviceInfo(ILjava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 129
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public initDeviceParams(Z)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    if-nez v0, :cond_0

    const-string p0, "DeviceParamsInitHelper"

    const-string p1, "initDeviceParams remoteService is null"

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 42
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "UTF-8"

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "imei"

    .line 44
    invoke-static {v1}, Lcom/android/settings/device/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "device"

    .line 46
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "model"

    if-eqz p1, :cond_2

    .line 47
    sget-object p1, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "product"

    .line 49
    sget-object v1, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 53
    :goto_1
    sget-object p1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->STANDARD_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    .line 55
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getPhoneConfigurationType()Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/android/settings/device/DeviceParamsInitHelper$1;->$SwitchMap$com$android$settings$device$MiuiAboutPhoneUtils$PhoneConfigurationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const-string v2, "0"

    const-string/jumbo v3, "version"

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    .line 72
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string p1, "2"

    .line 69
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string p1, "1"

    .line 66
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_3
    :try_start_3
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->getDeviceInfo(ILjava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public initSoundParams()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    const-string v1, "DeviceParamsInitHelper"

    if-nez v0, :cond_0

    const-string p0, "initSoundParams remoteService is null"

    .line 136
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 143
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-8"

    if-nez v3, :cond_1

    :try_start_1
    const-string v3, "imei"

    .line 145
    invoke-static {v2}, Lcom/android/settings/device/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "device"

    .line 147
    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "model"

    .line 148
    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "product"

    .line 149
    sget-object v3, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "UnsupportedEncodingException"

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version"

    const-string v2, "0"

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :try_start_2
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsInitHelper;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->getDeviceInfo(ILjava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 160
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method
