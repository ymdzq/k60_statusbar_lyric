.class Lcom/android/settings/bootloader/CloudDeviceStatus;
.super Ljava/lang/Object;
.source "CloudDeviceStatus.java"


# static fields
.field private static final HOST:Ljava/lang/String;

.field private static final SECURITY_CENTER_CONTENT_URI:Landroid/net/Uri;

.field private static final SECURITY_CENTER_GET_SERINUM_URI:Landroid/net/Uri;

.field private static sHeartbeatCount:I

.field private static sResult:Lcom/android/settings/bootloader/Utils$RetType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "https://unlock.update.intl.miui.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://unlock.update.miui.com"

    .line 36
    :goto_0
    sput-object v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->HOST:Ljava/lang/String;

    const-string v0, "content://com.miui.securitycenter.provider"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->SECURITY_CENTER_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "getserinum"

    .line 46
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->SECURITY_CENTER_GET_SERINUM_URI:Landroid/net/Uri;

    .line 51
    new-instance v0, Lcom/android/settings/bootloader/Utils$RetType;

    invoke-direct {v0}, Lcom/android/settings/bootloader/Utils$RetType;-><init>()V

    sput-object v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sHeartbeatCount:I

    return-void
.end method

.method private static analysisResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;Landroid/content/Context;)Z
    .locals 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stateCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudDeviceStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    .line 166
    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 167
    iget-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 168
    iput p1, v0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_0
    iput v2, v0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    :goto_0
    return v4

    .line 176
    :cond_1
    :try_start_0
    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo p0, "result"

    .line 177
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "code"

    const/4 v1, 0x5

    .line 178
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ok"

    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    if-nez v0, :cond_2

    goto :goto_2

    .line 185
    :cond_2
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    .line 186
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bootloader/Utils$RetType;->retMsg:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->isChineseLocale()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 188
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const-string v1, "descCN"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bootloader/Utils$RetType;->retMsg:Ljava/lang/String;

    goto :goto_1

    .line 190
    :cond_3
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const-string v1, "descEN"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bootloader/Utils$RetType;->retMsg:Ljava/lang/String;

    :goto_1
    const/16 p0, 0x191

    if-eq v0, p0, :cond_5

    const/16 p0, 0x4e76

    if-eq v0, p0, :cond_4

    goto :goto_3

    .line 198
    :cond_4
    invoke-static {}, Lcom/android/settings/bootloader/CloudDeviceStatus;->forceReload()V

    goto :goto_3

    .line 194
    :cond_5
    sget-object v0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    iput p0, v0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    .line 195
    invoke-static {p1}, Lcom/android/settings/bootloader/Utils;->invalidateAuthToken(Landroid/content/Context;)V

    goto :goto_3

    .line 181
    :cond_6
    :goto_2
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    iput v4, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    const-string p0, "count"

    .line 182
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sHeartbeatCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v4
.end method

.method public static bindAccountWithDevice(Landroid/content/Context;)Lcom/android/settings/bootloader/Utils$RetType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/bootloader/Utils$AccountExcepiton;
        }
    .end annotation

    const-string v0, "CloudDeviceStatus"

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 76
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    return-object p0

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->needSimCard()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    .line 81
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    iput v5, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    return-object p0

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    return-object p0

    .line 89
    :cond_2
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    return-object p0

    :cond_3
    const-string v6, "imsi1"

    .line 94
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string/jumbo v4, "userId"

    .line 97
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "device"

    .line 98
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->getModDevice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "rom_version"

    .line 99
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "heartbeat_mode"

    .line 100
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cloudsp_devId"

    .line 101
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cloudsp_cpuId"

    .line 102
    invoke-static {p0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getHardwardId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cloudsp_product"

    .line 103
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cloudsp_userId"

    .line 104
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cloudsp_romVersion"

    .line 105
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cloudsp_fid"

    .line 111
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cloudsp_nonce"

    .line 112
    invoke-static {p0, v3}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getNonce(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "get paramter error: fid"

    .line 115
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x4e7a

    .line 118
    :goto_0
    invoke-static {v1}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getSignData(Ljava/util/Map;)[B

    move-result-object v4

    const-string v6, "cloudp_sign"

    if-nez v4, :cond_5

    const-string v3, ""

    .line 121
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x4e7b

    goto :goto_1

    .line 123
    :cond_5
    invoke-static {v4}, Lcom/android/settings/bootloader/Utils;->binToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :try_start_1
    const-string v1, "error_code"

    .line 127
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :catch_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "sid"

    const-string/jumbo v6, "miui_sec_android"

    .line 131
    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 132
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/v1/unlock/applyBind"

    invoke-static {v6, v3}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getHMacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "sign"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p0, v2}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getCookie(Landroid/content/Context;Ljava/util/Map;)V

    .line 136
    :try_start_2
    new-instance v3, Lcom/android/settings/bootloader/LogEncryptor;

    invoke-direct {v3}, Lcom/android/settings/bootloader/LogEncryptor;-><init>()V

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "args: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/bootloader/LogEncryptor;->wrapEncryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "headers: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/android/settings/bootloader/LogEncryptor;->wrapEncryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encrypt error:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_2
    :try_start_3
    new-instance v3, Lmiui/cloud/net/XHttpClient;

    invoke-direct {v3}, Lmiui/cloud/net/XHttpClient;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/bootloader/CloudDeviceStatus;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lmiui/cloud/net/XHttpClient;->syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object v1

    .line 145
    invoke-static {v1, p0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->analysisResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 147
    :catch_3
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    iput v5, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    const-string/jumbo p0, "post server error!"

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_3
    sget-object p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sResult:Lcom/android/settings/bootloader/Utils$RetType;

    return-object p0
.end method

.method private static forceReload()V
    .locals 0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->forceReload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static getCookie(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/bootloader/Utils$AccountExcepiton;
        }
    .end annotation

    .line 290
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getAuthToken(Landroid/content/Context;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v0

    .line 291
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getEncryptedAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceToken="

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";cUserId="

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Cookie"

    .line 299
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getHMacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST\n"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "data="

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&sid="

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "miui_sec_android"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string p0, "HmacSHA1"

    .line 60
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 61
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "10f29ff413c89c8de02349cb3eb9a5f510f29ff413c89c8de02349cb3eb9a5f5"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->binToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHardwardId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 255
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->getHardwareIdFromLocal()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 260
    sget-object v3, Lcom/android/settings/bootloader/CloudDeviceStatus;->SECURITY_CENTER_GET_SERINUM_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "seriNum"

    .line 262
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :cond_0
    if-eqz v1, :cond_2

    .line 269
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 265
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 269
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :cond_1
    :goto_1
    throw p0

    .line 276
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 279
    :try_start_5
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v0
.end method

.method private static getNonce(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 212
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 214
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "cloudsp_devId"

    .line 216
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cloudsp_fid"

    .line 217
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string/jumbo p1, "userId"

    .line 219
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cloudsp_userId"

    .line 220
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/bootloader/CloudDeviceStatus;->HOST:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/micloud/nonce"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/settings/bootloader/Utils;->encodeGetParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 224
    :try_start_0
    new-instance v1, Lmiui/cloud/net/XHttpClient;

    invoke-direct {v1}, Lmiui/cloud/net/XHttpClient;-><init>()V

    invoke-virtual {v1, p1, v3}, Lmiui/cloud/net/XHttpClient;->syncGet(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    .line 225
    invoke-static {p1, p0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->analysisResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 226
    iget-object p0, p1, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    const-string p1, "data"

    .line 227
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo p1, "nonce"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static getSignData(Ljava/util/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST&"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/binding/v1/identified/device/account"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 239
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "cloudsp_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    .line 245
    invoke-static {p0, v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->signWithDeviceCredential([BZ)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getsignDataForHeartbeat(Ljava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 309
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, "&"

    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->signWithDeviceCredential([BZ)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static sendHeartbeat(Landroid/content/Context;)I
    .locals 7

    const/4 v0, 0x0

    .line 330
    :try_start_0
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 333
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p0, -0x4e7a

    return p0

    .line 336
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    .line 340
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "cpuId"

    .line 341
    invoke-static {p0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getHardwardId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fid"

    .line 342
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "product"

    .line 343
    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uid"

    .line 344
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {v4}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getsignDataForHeartbeat(Ljava/util/Map;)[B

    move-result-object v1

    if-nez v1, :cond_2

    const/16 p0, -0x4e7b

    return p0

    .line 349
    :cond_2
    invoke-static {v1}, Lcom/android/settings/bootloader/Utils;->binToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tzSign"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 353
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "sid"

    const-string/jumbo v5, "miui_sec_android"

    .line 354
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "data"

    .line 355
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CloudDeviceStatus"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/v1/unlock/deviceHeartbeat"

    invoke-static {v4, v1}, Lcom/android/settings/bootloader/CloudDeviceStatus;->getHMacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "sign"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :try_start_1
    new-instance v1, Lmiui/cloud/net/XHttpClient;

    invoke-direct {v1}, Lmiui/cloud/net/XHttpClient;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/settings/bootloader/CloudDeviceStatus;->HOST:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v2}, Lmiui/cloud/net/XHttpClient;->syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object v0

    .line 361
    invoke-static {v0, p0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->analysisResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 362
    sget p0, Lcom/android/settings/bootloader/CloudDeviceStatus;->sHeartbeatCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :cond_3
    return v3

    :catch_1
    const/4 p0, -0x2

    return p0
.end method
