.class public Lcom/android/settings/privacy/PrivacyNetUtils;
.super Ljava/lang/Object;
.source "PrivacyNetUtils.java"


# direct methods
.method private static getBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 322
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static getExtraString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    :try_start_0
    invoke-static {}, Lcom/android/settings/privacy/PrivacyNetUtils;->isMultiSimEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "imei2sha2"

    const/4 v4, 0x0

    const-string v5, "imei1sha2"

    if-eqz v2, :cond_0

    .line 180
    :try_start_1
    invoke-static {v4}, Lcom/android/settings/privacy/PrivacyNetUtils;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/privacy/EncryptUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 181
    invoke-static {v2}, Lcom/android/settings/privacy/PrivacyNetUtils;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/privacy/EncryptUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/privacy/EncryptUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :goto_0
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v2

    :goto_1
    if-ge v4, v2, :cond_2

    .line 189
    invoke-static {p0, v4}, Lmiui/telephony/CloudTelephonyManager;->isSimInserted(Landroid/content/Context;I)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v5, "sign"

    const-string/jumbo v6, "sim"

    if-eqz v3, :cond_1

    .line 190
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4}, Lmiui/telephony/CloudTelephonyManager;->getSimId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 192
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "PrivacyNetUtils"

    const-string v2, " getExtraString :  "

    .line 197
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getFidNonceSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0, v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PrivacyNetUtils"

    const-string v1, " getFidNonceSign :  "

    .line 211
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getFidNonceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "appModule"

    .line 154
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-static {}, Lcom/android/settings/privacy/PrivacyNetUtils;->isMultiSimEnabled()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "imei2sign"

    const-string v3, "imei1sign"

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 156
    :try_start_1
    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyNetUtils;->getImei(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyNetUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 157
    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyNetUtils;->getImei(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyNetUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyNetUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo p1, "macsign"

    .line 162
    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/privacy/PrivacyNetUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "devName"

    const-string/jumbo v2, "ro.product.device"

    .line 163
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "region"

    .line 164
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "language"

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "miuiVer"

    .line 166
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extra"

    .line 167
    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->getExtraString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "nonce"

    .line 168
    invoke-static {}, Lcom/android/settings/privacy/nonce/NonceFactory;->generateNonce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PrivacyNetUtils"

    const-string v1, " getFidNonceValue :  "

    .line 171
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getImei(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    .line 128
    invoke-static {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->getClass(Ljava/lang/String;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->callStatic(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->setResultToSelf()Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getImeiForSlot"

    .line 131
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->stringResult()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    .line 109
    invoke-static {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->getClass(Ljava/lang/String;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->callStatic(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->setResultToSelf()Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    const-string v2, "getImei"

    new-array v1, v1, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->stringResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 95
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 309
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 310
    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 311
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v0, "%1$032X"

    .line 312
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isMultiSimEnabled()Z
    .locals 5

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    .line 144
    invoke-static {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->getClass(Ljava/lang/String;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    .line 145
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->callStatic(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->setResultToSelf()Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    const-string v2, "isMultiSimEnabled"

    new-array v1, v1, [Ljava/lang/Object;

    .line 147
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/android/settings/privacy/PrivacyReflectUtils$ReflAgent;->booleanResult()Z

    move-result v0

    return v0
.end method

.method public static isXiaomiAccountLogin(Landroid/content/Context;)Z
    .locals 0

    .line 223
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "PrivacyNetUtils"

    .line 237
    invoke-static {p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->isXiaomiAccountLogin(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 242
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-static {p0, p2}, Lcom/android/settings/privacy/PrivacyNetUtils;->getFidNonceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "fidNonce"

    const-string v6, "UTF-8"

    .line 244
    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fidNonceSign"

    .line 245
    invoke-static {p2}, Lcom/android/settings/privacy/PrivacyNetUtils;->getFidNonceSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-static {v5}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceId"

    .line 252
    invoke-interface {p2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 256
    :try_start_1
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->isThisDeviceSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "fid"

    .line 257
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "get fid error  "

    .line 260
    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 263
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->getInstance()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->buildMiuiServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    move-result-object v5
    :try_end_2
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v6, "app_auth"

    .line 264
    invoke-interface {v5, p0, v6}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v3

    const-string/jumbo v6, "serviceToken"

    .line 265
    iget-object v7, v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_auth_ph"

    .line 266
    iget-object v7, v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "cUserId"

    .line 267
    iget-object v7, v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_2

    :cond_1
    move-object v5, v3

    :goto_1
    const/4 v6, 0x1

    .line 271
    :try_start_4
    invoke-static {p1, v4, p2, v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " response :  "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHttpCode()I

    move-result p2

    const/16 v4, 0xc8

    if-ne p2, v4, :cond_3

    .line 275
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    const/16 v4, -0x2710

    .line 276
    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v4, "description"

    .line 277
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez p1, :cond_2

    move v2, v6

    :cond_2
    return v2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p0

    const-string p1, " post Exception:  "

    .line 301
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_4
    move-exception p0

    const-string p1, " post JSONException:  "

    .line 299
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_5
    move-exception p1

    move-object v5, v3

    :goto_2
    const-string p2, " post AuthenticationFailureException:  "

    .line 291
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 294
    :try_start_5
    invoke-interface {v3, p0, v5}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_3

    :catch_6
    move-exception p0

    const-string p1, " post AccessDeniedException:  "

    .line 288
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_7
    move-exception p0

    const-string p1, " post IOException:  "

    .line 285
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_8
    move-exception p0

    const-string p1, " post IllegalDeviceException:  "

    .line 282
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_9
    :cond_3
    :goto_3
    return v2
.end method
