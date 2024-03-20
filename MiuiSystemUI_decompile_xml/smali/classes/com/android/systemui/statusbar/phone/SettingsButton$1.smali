.class public final Lcom/android/systemui/statusbar/phone/SettingsButton$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SettingsButton;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 23
    sget v2, Lcom/android/systemui/statusbar/phone/SettingsButton;->$r8$clinit:I

    .line 25
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 27
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 31
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 34
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 36
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    :cond_0
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    .line 41
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/SettingsButton;->mLongPressCallback:Lcom/android/systemui/statusbar/phone/SettingsButton$3;

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 54
    return-void

    .line 57
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 60
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 64
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 69
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 74
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    .line 78
    sget-object p1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 80
    const/4 v0, 0x2

    .line 82
    new-array v0, v0, [F

    .line 83
    fill-array-data v0, :array_0

    .line 85
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 88
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 92
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 94
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 99
    const-wide/16 v0, 0x177

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    const/4 v0, -0x1

    .line 108
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 112
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 114
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 118
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
    .line 124
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
