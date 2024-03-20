.class public final Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p0, p1, Landroid/os/Message;->what:I

    .line 5
    const/16 v0, 0xc9

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/16 v0, 0xca

    .line 11
    if-eq p0, v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 23
    :goto_0
    return-void
    .line 25
.end method
