.class public final synthetic Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/animation/FloatingIconLayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "FloatingIconLayer"

    .line 7
    const-string/jumbo v2, "release"

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v1, 0x1

    .line 15
    :try_start_1
    new-array v2, v1, [Landroid/view/SurfaceControl;

    .line 16
    iget-object v3, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 18
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 23
    if-ge v4, v1, :cond_0

    .line 25
    aget-object v5, v2, v4

    .line 27
    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurface:Landroid/view/Surface;

    .line 38
    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_1

    .line 45
    :catch_0
    :try_start_2
    const-string p0, "FloatingIconLayer"

    .line 46
    const-string/jumbo v1, "release error."

    .line 48
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    :goto_1
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p0
    .line 58
.end method
