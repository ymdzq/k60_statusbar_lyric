.class public final Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final mSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final appTransitionCancelled(I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 8
    if-eqz p0, :cond_2

    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    .line 12
    if-eq v0, p1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 17
    const/4 v6, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 26
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->getTintAnimationDuration()I

    .line 34
    move-result p1

    .line 37
    int-to-long v4, p1

    .line 38
    move-object v0, p0

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 40
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 43
    :cond_2
    :goto_0
    return-void
    .line 45
.end method

.method public final appTransitionPending(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 8
    if-eqz p0, :cond_1

    .line 10
    iget p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    .line 12
    if-eq p2, p1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 18
    :cond_1
    :goto_0
    return-void
    .line 20
.end method

.method public final appTransitionStarting(IJJZ)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 8
    if-eqz p0, :cond_3

    .line 10
    iget p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    .line 12
    if-eq p6, p1, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 17
    const/4 p6, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 26
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    move-result-wide v2

    .line 33
    sub-long/2addr p2, v2

    .line 34
    const-wide/16 v2, 0x0

    .line 35
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 37
    move-result-wide v2

    .line 40
    move-object v0, p0

    .line 41
    move-wide v4, p4

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    .line 47
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 50
    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 52
    iput-wide p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    .line 56
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    .line 58
    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_2
    :goto_0
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 66
    :cond_3
    :goto_1
    return-void
    .line 68
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;->mSelf:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    .line 12
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 17
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 21
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method
