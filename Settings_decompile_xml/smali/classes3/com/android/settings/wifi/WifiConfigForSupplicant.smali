.class public Lcom/android/settings/wifi/WifiConfigForSupplicant;
.super Ljava/lang/Object;
.source "WifiConfigForSupplicant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigForSupplicant$WifiConfigInternal;
    }
.end annotation


# static fields
.field private static final WEP_KEY_VAR_NAMES:[Ljava/lang/String;

.field private static sInstance:Lcom/android/settings/wifi/WifiConfigForSupplicant;


# direct methods
.method static bridge synthetic -$$Nest$sfgetWEP_KEY_VAR_NAMES()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/WifiConfigForSupplicant;->WEP_KEY_VAR_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "wep_key2"

    const-string/jumbo v1, "wep_key3"

    const-string/jumbo v2, "wep_key0"

    const-string/jumbo v3, "wep_key1"

    .line 37
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigForSupplicant;->WEP_KEY_VAR_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/android/settings/wifi/WifiConfigForSupplicant;->sInstance:Lcom/android/settings/wifi/WifiConfigForSupplicant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromHex(CZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v0

    return p0

    :cond_1
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, -0x1

    return p0

    .line 403
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hex-character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/android/settings/wifi/WifiConfigForSupplicant;
    .locals 2

    .line 84
    const-class v0, Lcom/android/settings/wifi/WifiConfigForSupplicant;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/android/settings/wifi/WifiConfigForSupplicant;->sInstance:Lcom/android/settings/wifi/WifiConfigForSupplicant;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/android/settings/wifi/WifiConfigForSupplicant;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;-><init>()V

    sput-object v1, Lcom/android/settings/wifi/WifiConfigForSupplicant;->sInstance:Lcom/android/settings/wifi/WifiConfigForSupplicant;

    .line 88
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lcom/android/settings/wifi/WifiConfigForSupplicant;->sInstance:Lcom/android/settings/wifi/WifiConfigForSupplicant;

    return-object v0

    :catchall_0
    move-exception v1

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private hexToBytes(Ljava/lang/String;)[B
    .locals 6

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_1

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    shr-int/2addr p0, v0

    new-array p0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 384
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 386
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 387
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->fromHex(CZ)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object p0

    .line 380
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Odd length hex string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parsePairValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x3d

    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 408
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V
    .locals 1

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x2d

    const/16 v0, 0x5f

    .line 425
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 426
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 427
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 v1, 0x0

    .line 447
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    sub-int/2addr p0, v0

    .line 448
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 449
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    if-eqz p2, :cond_23

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSID"

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string v0, "BSSID"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "bssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string v0, "PreSharedKey"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "psk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_8

    .line 311
    :cond_3
    sget-object v0, Lcom/android/settings/wifi/WifiConfigForSupplicant;->WEP_KEY_VAR_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    goto/16 :goto_b

    :cond_4
    const/4 v1, 0x1

    .line 313
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 314
    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    goto/16 :goto_b

    :cond_5
    const/4 v1, 0x2

    .line 315
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    goto/16 :goto_b

    :cond_6
    const/4 v1, 0x3

    .line 317
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    goto/16 :goto_b

    :cond_7
    const-string v0, "WEPTxKeyIndex"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "wep_tx_keyidx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7

    :cond_8
    const-string v0, "HiddenSSID"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "scan_ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_6

    :cond_9
    const-string v0, "AllowAutojoin"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p2, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    goto/16 :goto_b

    :cond_a
    const-string v0, "AllowedKeyMgmt"

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 326
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 327
    invoke-static {p0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    goto/16 :goto_b

    :cond_b
    const-string v0, "key_mgmt"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 329
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parseString(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_b

    :cond_c
    const-string v0, "EapMethod"

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 333
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_b

    :cond_d
    const-string v0, "eap"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 335
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto/16 :goto_b

    :cond_e
    const-string v0, "Phase2Method"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 342
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 343
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_b

    :cond_f
    const-string v0, "phase2"

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 345
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto/16 :goto_b

    :cond_10
    const-string v0, "Identity"

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "identity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_5

    :cond_11
    const-string v0, "AnonIdentity"

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "anonymous_identity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_4

    :cond_12
    const-string v0, "Password"

    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_3

    :cond_13
    const-string v0, "ClientCert"

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "client_cert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2

    :cond_14
    const-string v0, "PrivateKeyId"

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1

    :cond_15
    const-string v0, "CaCert"

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "ca_cert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_0

    :cond_16
    const-string v0, "CreatorUid"

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 370
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_b

    :cond_17
    const-string v0, "MacRandomizationSetting"

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 373
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 374
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto/16 :goto_b

    .line 367
    :cond_18
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto/16 :goto_b

    .line 364
    :cond_19
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 365
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 361
    :cond_1a
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 362
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto :goto_b

    .line 358
    :cond_1b
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 359
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_b

    .line 355
    :cond_1c
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 356
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_b

    .line 352
    :cond_1d
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 353
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_b

    .line 322
    :cond_1e
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_b

    .line 320
    :cond_1f
    :goto_7
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_b

    .line 310
    :cond_20
    :goto_8
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b

    .line 308
    :cond_21
    :goto_9
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_b

    .line 305
    :cond_22
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->parsePairValueRemoveDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_23
    :goto_b
    return-void
.end method


# virtual methods
.method public getConfiguredNetworks(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "wifi"

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 125
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 127
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    .line 128
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Lcom/android/settings/wifi/WifiConfigForSupplicant$WifiConfigInternal;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConfigForSupplicant$WifiConfigInternal;-><init>(Lcom/android/settings/wifi/WifiConfigForSupplicant;Landroid/net/wifi/WifiConfiguration;)V

    .line 130
    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigForSupplicant$WifiConfigInternal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguredNetworks "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigForSupplicant$WifiConfigInternal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupplicantManager"

    invoke-static {v2, v1}, Lcom/android/settings/utils/LogUtil;->logCloudSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRestoreWifiConfigs(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "SupplicantManager"

    .line 219
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v3, "wpa_supplicant.tmp"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    .line 224
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 227
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    :goto_0
    if-eqz v5, :cond_5

    const-string v7, "[ \\t]*network=\\{"

    .line 230
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_1

    :cond_1
    const-string v7, "[ \\t]*\\}"

    .line 232
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 233
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->convertLegacyFieldsToSecurityParamsIfNeeded()V

    .line 234
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->needsPreSharedKey()Z

    move-result v7

    if-nez v7, :cond_2

    .line 235
    iput-object v3, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 237
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRestoreWifiConfigs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/settings/utils/LogUtil;->logCloudSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 242
    invoke-direct {p0, v5, v6}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 229
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 245
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    .line 249
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_6

    .line 253
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_3
    move-exception p0

    .line 247
    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_6

    goto :goto_3

    :catch_4
    :cond_6
    :goto_5
    return-object p1

    :goto_6
    if-eqz v3, :cond_7

    .line 253
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 258
    :catch_5
    :cond_7
    throw p0
.end method

.method public getWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 112
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p2

    .line 114
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 115
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public storeWifiConfigs(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 5

    .line 263
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "wpa_supplicant.tmp"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, ", "

    const-string v1, "SupplicantManager"

    if-nez p1, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 274
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 275
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 277
    invoke-virtual {v3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 278
    invoke-virtual {v3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 291
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, p1

    :goto_3
    move-object p1, v2

    goto :goto_9

    :catch_3
    move-exception p0

    move-object v3, p1

    :goto_4
    move-object p1, v2

    goto :goto_6

    :catch_4
    move-exception p0

    move-object v3, p1

    :goto_5
    move-object p1, v2

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v3, p1

    goto :goto_9

    :catch_5
    move-exception p0

    move-object v3, p1

    .line 284
    :goto_6
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p1, :cond_2

    .line 288
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_2
    if-eqz v3, :cond_4

    goto :goto_2

    :catch_6
    move-exception p0

    move-object v3, p1

    .line 282
    :goto_7
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p1, :cond_3

    .line 288
    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    :catch_7
    :cond_4
    :goto_8
    return-void

    :catchall_3
    move-exception p0

    :goto_9
    if-eqz p1, :cond_5

    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 291
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 296
    :catch_8
    :cond_6
    throw p0
.end method
