.class public final Lcom/android/systemui/vendor/OrientationPolicy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplay:Landroid/view/Display;

.field public mLastRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mLastRotation:I

    .line 6
    const-string/jumbo v0, "window"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/WindowManager;

    .line 15
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 17
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 22
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplay:Landroid/view/Display;

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mContext:Landroid/content/Context;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final writeRotationForBsp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplay:Landroid/view/Display;

    .line 2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    const/4 v0, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x10e

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    const/16 v0, 0xb4

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    const/16 v0, 0x5a

    .line 27
    goto :goto_0

    .line 29
    :cond_3
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget v1, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mLastRotation:I

    .line 31
    if-eq v1, v0, :cond_4

    .line 33
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 35
    new-instance v2, Lcom/android/systemui/vendor/OrientationPolicy$1;

    .line 37
    invoke-direct {v2, v0}, Lcom/android/systemui/vendor/OrientationPolicy$1;-><init>(I)V

    .line 39
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    iput v0, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mLastRotation:I

    .line 45
    :cond_4
    return-void
    .line 47
.end method
