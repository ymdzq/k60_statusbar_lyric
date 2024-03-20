.class Lmiui/cloud/net/XHttpClient$HttpRequest;
.super Ljava/lang/Object;
.source "XHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRequest"
.end annotation


# instance fields
.field private mCallback:Lmiui/cloud/common/XCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCtx:Ljava/lang/Object;

.field private mData:Ljava/lang/Object;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

.field private mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

.field private mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lmiui/cloud/net/XHttpClient;


# direct methods
.method public constructor <init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance p1, Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-direct {p1}, Lmiui/cloud/net/XHttpClient$HttpResponse;-><init>()V

    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 293
    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mMethod:Ljava/lang/String;

    .line 294
    iput-object p3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    .line 295
    iput-object p4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    .line 296
    iput-object p5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 297
    iput-object p6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 298
    iput-object p7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 299
    iput-object p8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 300
    iput-object p9, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    return-void
.end method

.method private prepareConn(Ljava/net/URLConnection;)V
    .locals 1

    const/16 v0, 0x7530

    .line 415
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 416
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 417
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {p0}, Lmiui/cloud/net/XHttpClient;->access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    move-result-object p0

    invoke-interface {p0}, Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "User-Agent"

    .line 420
    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", "

    .line 432
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public doHttpRequest()V
    .locals 13

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 315
    :try_start_0
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    const-string v4, "[TEST]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const/16 v4, 0x400

    iput v4, v1, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const-string v4, "TEST OK"

    .line 317
    iput-object v4, v1, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    .line 318
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    iput-object v4, v1, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 319
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    iput-object v4, v1, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v4, 0xc8

    .line 321
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/16 :goto_4

    .line 327
    :cond_0
    :try_start_2
    new-instance v1, Ljava/net/URL;

    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 330
    :try_start_3
    invoke-direct {p0, v1}, Lmiui/cloud/net/XHttpClient$HttpRequest;->prepareConn(Ljava/net/URLConnection;)V

    .line 332
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    invoke-direct {p0, v1, v4}, Lmiui/cloud/net/XHttpClient$HttpRequest;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const-string v4, "Connection"

    const-string v5, "close"

    .line 337
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 340
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 342
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 343
    invoke-interface {v4, v5}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataLength(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 345
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :goto_0
    const-string v4, "Content-Type"

    .line 349
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 350
    invoke-interface {v5, v6}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 354
    :try_start_4
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 357
    throw v0

    .line 360
    :cond_2
    :goto_1
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    .line 361
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    .line 362
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->contentLength:J

    .line 363
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 364
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v4

    .line 365
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_2
    iput-object v0, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->date:Ljava/util/Date;

    .line 367
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_5

    .line 368
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 370
    :try_start_6
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    if-nez v4, :cond_4

    .line 371
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v4}, Lmiui/cloud/net/XHttpClient;->access$100(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    move-result-object v4

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v5, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 372
    invoke-virtual {v4, v5, v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getReceiveDataProcessor(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    move-result-object v4

    iput-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 373
    :cond_4
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    iget-object v6, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v5, v6, v0}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 376
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 377
    throw v4
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    :goto_3
    move-object v0, v1

    :catch_0
    :goto_4
    if-eqz v0, :cond_6

    .line 395
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    :cond_6
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_7

    :catchall_3
    move-exception v1

    goto/16 :goto_a

    :catch_4
    move-exception v1

    .line 390
    :goto_5
    :try_start_8
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v1, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 392
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_7

    .line 395
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    :cond_7
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_a

    goto :goto_8

    :catch_5
    move-exception v1

    .line 386
    :goto_6
    :try_start_9
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v1, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 388
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_8

    .line 395
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    :cond_8
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_a

    goto :goto_8

    :catch_6
    move-exception v1

    .line 382
    :goto_7
    :try_start_a
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v1, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 384
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_9

    .line 395
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    :cond_9
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_a

    .line 398
    :goto_8
    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-interface {v0, v1}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    .line 402
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v2

    .line 403
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    if-nez v0, :cond_b

    .line 404
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v10

    new-instance v11, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    iget-object p0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-wide v6, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->contentLength:J

    iget v8, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const/4 v9, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    invoke-virtual {v10, v11}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    goto :goto_9

    .line 408
    :cond_b
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v8

    new-instance v9, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    iget-object p0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    invoke-virtual {v8, v9}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    :goto_9
    return-void

    :goto_a
    if-eqz v0, :cond_c

    .line 395
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    :cond_c
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v2, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_d

    .line 398
    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    iget-object p0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-interface {v0, p0}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    .line 400
    :cond_d
    throw v1
.end method

.method public run()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lmiui/cloud/net/XHttpClient$HttpRequest;->doHttpRequest()V

    .line 306
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0, p0}, Lmiui/cloud/net/XHttpClient;->access$000(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method
