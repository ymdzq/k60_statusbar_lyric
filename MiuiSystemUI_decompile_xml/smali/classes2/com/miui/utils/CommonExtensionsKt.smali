.class public abstract Lcom/miui/utils/CommonExtensionsKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static mLastClickTime:J


# direct methods
.method public static final checkFastDoubleClick(J)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/miui/utils/CommonExtensionsKt;->mLastClickTime:J

    .line 6
    sub-long/2addr v0, v2

    .line 8
    cmp-long p0, v0, p0

    .line 9
    if-lez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/miui/utils/CommonExtensionsKt;->mLastClickTime:J

    .line 20
    return p0
    .line 22
.end method

.method public static final runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/miui/utils/CommonExtensionsKt$sam$java_lang_Runnable$0;

    .line 16
    invoke-direct {v0, p1}, Lcom/miui/utils/CommonExtensionsKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :goto_0
    return-void
    .line 24
.end method
