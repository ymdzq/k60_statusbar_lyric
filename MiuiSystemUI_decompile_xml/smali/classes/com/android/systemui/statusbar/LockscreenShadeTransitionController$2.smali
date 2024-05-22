.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_5

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 4
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 6
    const/4 v0, 0x0

    .line 8
    cmpg-float p1, p1, v0

    .line 9
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    move p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v2

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 24
    move-result p1

    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    move p1, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p1, v2

    .line 32
    :goto_1
    if-nez p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAmountResetWhenFullyCollapsed()V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V

    .line 40
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    .line 43
    cmpg-float p1, p1, v0

    .line 45
    if-nez p1, :cond_3

    .line 47
    move p1, v1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move p1, v2

    .line 51
    :goto_2
    if-nez p1, :cond_5

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeightAnimator:Landroid/animation/ValueAnimator;

    .line 54
    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 58
    move-result p1

    .line 61
    if-ne p1, v1, :cond_4

    .line 62
    goto :goto_3

    .line 64
    :cond_4
    move v1, v2

    .line 65
    :goto_3
    if-nez v1, :cond_5

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 68
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logPulseHeightNotResetWhenFullyCollapsed()V

    .line 70
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    .line 73
    :cond_5
    return-void
    .line 76
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 12
    move-result p1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    move p1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAmountReset()V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 35
    const/4 v2, 0x0

    .line 37
    cmpg-float p1, p1, v2

    .line 38
    if-nez p1, :cond_2

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_1
    if-nez v0, :cond_3

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V

    .line 46
    :cond_3
    return-void
    .line 49
.end method
