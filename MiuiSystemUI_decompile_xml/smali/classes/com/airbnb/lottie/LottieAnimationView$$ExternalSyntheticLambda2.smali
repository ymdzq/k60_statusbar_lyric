.class public final synthetic Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    sget-object p0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;

    .line 4
    sget-object p0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 6
    instance-of p0, p1, Ljava/net/SocketException;

    .line 8
    if-nez p0, :cond_1

    .line 10
    instance-of p0, p1, Ljava/nio/channels/ClosedChannelException;

    .line 12
    if-nez p0, :cond_1

    .line 14
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    .line 16
    if-nez p0, :cond_1

    .line 18
    instance-of p0, p1, Ljava/net/ProtocolException;

    .line 20
    if-nez p0, :cond_1

    .line 22
    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    .line 24
    if-nez p0, :cond_1

    .line 26
    instance-of p0, p1, Ljava/net/UnknownHostException;

    .line 28
    if-nez p0, :cond_1

    .line 30
    instance-of p0, p1, Ljava/net/UnknownServiceException;

    .line 32
    if-eqz p0, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 39
    :goto_1
    if-eqz p0, :cond_2

    .line 40
    const-string p0, "Unable to load composition."

    .line 42
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v0, "Unable to parse composition"

    .line 50
    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    throw p0
    .line 55
.end method
