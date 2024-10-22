.class public Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;
.super Ljava/lang/Object;
.source "FidNonce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidNonce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->getComputer()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    .line 45
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil;->getFidSigner()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    move-result-object p0

    .line 46
    new-instance v0, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->build(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidNonce;

    move-result-object p0

    return-object p0
.end method

.method build(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .locals 5

    const-string v0, "UTF-8"

    const-string v1, "FidNonce"

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-object v2

    :cond_0
    if-nez p3, :cond_1

    return-object v2

    .line 61
    :cond_1
    :try_start_0
    invoke-interface {p3}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;->canSign()Z

    move-result v3
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v3, :cond_2

    return-object v2

    .line 69
    :cond_2
    sget-object v3, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->NATIVE:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    if-ne p1, v3, :cond_3

    const-string p1, "n"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "wb"

    .line 70
    :goto_0
    invoke-interface {p2}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;->computeServerTime()J

    move-result-wide v3

    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->generateNonce(J)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->buildPlain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 83
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;->sign([B)[B

    move-result-object p0
    :try_end_2
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p0, :cond_4

    return-object v2

    .line 96
    :cond_4
    invoke-static {p0, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 100
    :try_start_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    new-instance p0, Lcom/xiaomi/accountsdk/utils/FidNonce;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/FidNonce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception p0

    .line 88
    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_2
    move-exception p0

    .line 85
    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_3
    move-exception p0

    .line 78
    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_4
    move-exception p0

    .line 65
    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 51
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method buildPlain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 111
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "tp"

    .line 112
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nonce"

    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "v"

    .line 114
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 117
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "should not happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method generateNonce(J)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/utils/NonceCoder;->generateNonce(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVersion()Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/VersionUtils;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
