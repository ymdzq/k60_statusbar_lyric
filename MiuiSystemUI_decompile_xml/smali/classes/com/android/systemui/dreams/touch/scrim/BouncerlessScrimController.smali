.class public final Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/touch/scrim/ScrimController;
.implements Lcom/android/systemui/unfold/util/CallbackController;


# instance fields
.field public final mCallbacks:Ljava/util/HashSet;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mPowerManager:Landroid/os/PowerManager;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mCallbacks:Ljava/util/HashSet;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v2

    .line 11
    const-string p1, "com.android.systemui:SwipeUp"

    .line 12
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mPowerManager:Landroid/os/PowerManager;

    .line 14
    const/4 v4, 0x4

    .line 16
    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 17
    new-instance p1, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;)V

    .line 22
    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;

    .line 29
    const/4 v2, 0x1

    .line 31
    invoke-direct {v0, p0, p1, v2}, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;Ljava/lang/Object;I)V

    .line 32
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    :goto_0
    return-void
    .line 38
.end method
