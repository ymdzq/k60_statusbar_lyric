.class public final Lcom/xiaomi/accountsdk/request/SimpleRequest;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;

.field private static sHttpURLConnectionFactory:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->log:Ljava/util/logging/Logger;

    .line 83
    new-instance v0, Lcom/xiaomi/accountsdk/request/SimpleRequest$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->sHttpURLConnectionFactory:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/accountsdk/request/ConnectivityListener;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static appendUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 141
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "origin is not allowed null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "utf-8"

    .line 649
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static encodeFormatAndJoinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 628
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 633
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 635
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 639
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 640
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    .line 173
    invoke-static/range {p0 .. p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 178
    invoke-static {}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;->get()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    move-result-object v2

    const-string v3, "GET"

    move-object/from16 v12, p0

    invoke-interface {v2, v1, v3, v12}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;->onBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/xiaomi/accountsdk/request/log/TransportLogHelper;->logRequestStarted()V

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    .line 181
    invoke-static {v0, v4, v2, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;

    move-result-object v13

    if-eqz v13, :cond_7

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 189
    :try_start_0
    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 190
    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 193
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 194
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v2

    invoke-interface {v2, v1, v14}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logResponseCode(Ljava/lang/String;I)V

    .line 196
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->getComputer()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    const/16 v2, 0xc8

    if-eq v14, v2, :cond_4

    const/16 v2, 0x12e

    if-ne v14, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x193

    if-eq v14, v0, :cond_3

    const/16 v0, 0x191

    if-eq v14, v0, :cond_2

    const/16 v0, 0x190

    if-eq v14, v0, :cond_2

    .line 247
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http status error when GET: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 v2, 0x12d

    if-ne v14, v2, :cond_1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected redirect from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Location"

    .line 251
    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 253
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected http res code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    new-instance v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authentication failure for get, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v14, v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;-><init>(ILjava/lang/String;)V

    const-string v2, "WWW-Authenticate"

    .line 243
    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->setWwwAuthenticateHeader(Ljava/lang/String;)V

    const-string v2, "CA-DISABLE-SECONDS"

    .line 244
    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->setCaDisableSecondsHeader(Ljava/lang/String;)V

    .line 245
    throw v0

    .line 236
    :cond_3
    new-instance v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    const-string v2, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v0, v14, v2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 206
    :cond_4
    :goto_0
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 207
    new-instance v2, Ljava/net/CookieManager;

    invoke-direct {v2}, Ljava/net/CookieManager;-><init>()V

    .line 208
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 209
    invoke-virtual {v2, v0, v9}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 210
    invoke-virtual {v2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_6

    .line 214
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 215
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    :cond_5
    :try_start_3
    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 223
    throw v0

    .line 225
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-static {}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;->get()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    move-result-object v2

    const-string v4, "GET"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    move-object v3, v1

    move-object/from16 v5, p0

    move-wide v6, v10

    move-object v12, v8

    move v8, v14

    move-object/from16 p1, v9

    move/from16 v9, v16

    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 228
    new-instance v2, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {v2, v12}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->putCookies(Ljava/util/Map;)V

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accountsdk/utils/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V

    .line 231
    invoke-virtual {v2, v14}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->setHttpCode(I)V

    .line 232
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v3, v1, v12, v4, v0}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 233
    invoke-static {}, Lcom/xiaomi/accountsdk/request/log/TransportLogHelper;->logRequestSuccessed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catch_0
    move-exception v0

    move-object v9, v15

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v9, v4

    .line 257
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;->get()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    move-result-object v2

    const-string v4, "GET"

    move-object v3, v1

    move-object/from16 v5, p0

    move-wide v6, v10

    move-object v8, v0

    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;Ljava/lang/Integer;)V

    .line 258
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logRequestException(Ljava/lang/Exception;)V

    .line 259
    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/log/TransportLogHelper;->logRequestException(Ljava/lang/Throwable;)V

    .line 260
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;->recordAccountRequestException(Ljava/lang/Exception;)V

    .line 261
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    :goto_4
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    throw v0

    .line 183
    :cond_7
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v1, "failed to create URLConnection"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to create connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;
    .locals 1

    .line 268
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/DiagnosisLog;->get()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v0

    return-object v0
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 661
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 666
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 668
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 584
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 586
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 589
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string p1, "failed to init url"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    const/16 p0, 0x7530

    .line 593
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 596
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 597
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->sHttpURLConnectionFactory:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

    invoke-interface {p0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;->makeConn(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 v1, 0x0

    .line 598
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 599
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 600
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 601
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p3, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 602
    invoke-virtual {p0, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p3, "User-Agent"

    if-eqz p2, :cond_2

    .line 605
    :try_start_2
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 606
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 607
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p1, :cond_5

    .line 610
    new-instance p1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    :cond_5
    const-string/jumbo p3, "sdkVersion"

    .line 612
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/VersionUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Cookie"

    const-string v1, "; "

    .line 613
    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 615
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 616
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_6
    return-object p0

    :catch_1
    move-exception p0

    .line 621
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;->recordAccountRequestException(Ljava/lang/Exception;)V

    return-object v0
.end method

.method protected static parseCookies(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 677
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 678
    invoke-virtual {v1}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {v1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 682
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v3, p4

    const-string v10, "host"

    if-eqz v3, :cond_0

    .line 408
    invoke-static {v9, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object v11, v9

    .line 410
    :goto_0
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 415
    invoke-static {}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;->get()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    move-result-object v1

    const-string v2, "POST"

    invoke-interface {v1, v12, v2, v9}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;->onBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/xiaomi/accountsdk/request/log/TransportLogHelper;->logRequestStarted()V

    move-object/from16 v1, p2

    move-object/from16 v3, p6

    .line 418
    invoke-static {v11, v1, v8, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;

    move-result-object v15

    if-eqz v15, :cond_d

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 426
    :try_start_0
    invoke-virtual {v15, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 427
    invoke-virtual {v15, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 428
    invoke-virtual {v15, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v0, :cond_1

    .line 431
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&"

    .line 432
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->encodeFormatAndJoinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 434
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string/jumbo v1, "utf-8"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :try_start_2
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 439
    throw v0

    .line 442
    :cond_1
    :goto_1
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 444
    :try_start_3
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v1

    invoke-interface {v1, v12, v0}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logResponseCode(Ljava/lang/String;I)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x193

    if-eq v0, v1, :cond_5

    const/16 v1, 0x191

    if-eq v0, v1, :cond_4

    const/16 v1, 0x190

    if-eq v0, v1, :cond_4

    .line 520
    sget-object v1, Lcom/xiaomi/accountsdk/request/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http status error when POST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 v2, 0x12d

    if-ne v0, v2, :cond_3

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected redirect from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Location"

    .line 524
    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 526
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected http res code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_4
    new-instance v1, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authentication failure for post, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;-><init>(ILjava/lang/String;)V

    const-string v0, "WWW-Authenticate"

    .line 516
    invoke-virtual {v15, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->setWwwAuthenticateHeader(Ljava/lang/String;)V

    const-string v0, "CA-DISABLE-SECONDS"

    .line 517
    invoke-virtual {v15, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->setCaDisableSecondsHeader(Ljava/lang/String;)V

    .line 518
    throw v1

    .line 510
    :cond_5
    new-instance v1, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    const-string v2, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 448
    :cond_6
    :goto_2
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    .line 449
    invoke-static {v11}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 452
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 453
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_7

    .line 454
    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 456
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v5, "c.id.mi.com"

    .line 458
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "account.xiaomi.com"

    .line 460
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_8
    new-instance v5, Lcom/xiaomi/accountsdk/request/SimpleRequest$2;

    invoke-direct {v5, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$2;-><init>(Ljava/util/HashSet;)V

    .line 474
    new-instance v6, Ljava/net/CookieManager;

    invoke-direct {v6, v3, v5}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 475
    invoke-virtual {v6, v1, v7}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 476
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 477
    invoke-virtual {v6}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    .line 478
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 479
    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 480
    invoke-interface {v1, v4}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 482
    invoke-interface {v10, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    .line 485
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_c

    .line 487
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 488
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 492
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 493
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 496
    :cond_b
    :try_start_5
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 497
    throw v0

    .line 499
    :cond_c
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 501
    invoke-static {}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;->get()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    move-result-object v1

    const-string v3, "POST"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    move-object v2, v12

    move-object/from16 v4, p0

    move-wide v5, v13

    move-object/from16 p1, v7

    move v7, v0

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 502
    new-instance v1, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {v1, v11}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1, v10}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->putCookies(Ljava/util/Map;)V

    .line 504
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->setHttpCode(I)V

    .line 505
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accountsdk/utils/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V

    .line 506
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-interface {v0, v12, v11, v2, v10}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 507
    invoke-static {}, Lcom/xiaomi/accountsdk/request/log/TransportLogHelper;->logRequestSuccessed()V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 538
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catch_0
    move-exception v0

    move-object/from16 v8, v16

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v8, v3

    .line 532
    :goto_6
    :try_start_6
    invoke-static {}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;->get()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    move-result-object v1

    const-string v3, "POST"

    move-object v2, v12

    move-object/from16 v4, p0

    move-wide v5, v13

    move-object v7, v0

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;Ljava/lang/Integer;)V

    .line 533
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getDiagnosisLogger()Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/utils/DiagnosisLogInterface;->logRequestException(Ljava/lang/Exception;)V

    .line 534
    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/log/TransportLogHelper;->logRequestException(Ljava/lang/Throwable;)V

    .line 535
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountRecentExceptionRecorder;->recordAccountRequestException(Ljava/lang/Exception;)V

    .line 536
    throw v0

    .line 529
    :catch_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "protocol error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 538
    :goto_7
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 539
    throw v0

    .line 420
    :cond_d
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v1, "failed to create URLConnection"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to create connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 377
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method
