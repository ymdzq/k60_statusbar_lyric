.class public final synthetic Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconMouseAnim:Lmiuix/animation/ITouchStyle;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    filled-new-array {p1}, [Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0, v1, v1, v1, v1}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 21
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconMouseAnim:Lmiuix/animation/ITouchStyle;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconMouseAnim:Lmiuix/animation/ITouchStyle;

    .line 27
    const/4 v2, 0x0

    .line 29
    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    .line 30
    invoke-interface {v0, p1, p2, v3}, Lmiuix/animation/ITouchStyle;->onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    move-result p1

    .line 38
    const/4 v0, 0x0

    .line 39
    const-string v3, "flick"

    .line 40
    const-class v4, Lcom/miui/interfaces/IHapticFeedBack;

    .line 42
    if-eqz p1, :cond_3

    .line 44
    const/4 v5, 0x1

    .line 46
    if-eq p1, v5, :cond_1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 50
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 56
    move-result p1

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 60
    move-result p2

    .line 63
    invoke-virtual {p0, p1, p2, v1}, Landroid/widget/LinearLayout;->pointInView(FFF)Z

    .line 64
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 72
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    move v5, v2

    .line 79
    :goto_0
    if-eqz v5, :cond_4

    .line 80
    invoke-static {v4}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 85
    check-cast p0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 86
    check-cast p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-boolean p1, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 93
    if-eqz p1, :cond_4

    .line 95
    new-instance p1, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;

    .line 97
    invoke-direct {p1, p0, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 102
    goto :goto_1

    .line 105
    :cond_3
    invoke-static {v4}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    check-cast p0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 110
    check-cast p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    sget-boolean p1, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 117
    if-eqz p1, :cond_4

    .line 119
    new-instance p1, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;

    .line 121
    invoke-direct {p1, p0, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 126
    :cond_4
    :goto_1
    return v2
    .line 129
.end method
