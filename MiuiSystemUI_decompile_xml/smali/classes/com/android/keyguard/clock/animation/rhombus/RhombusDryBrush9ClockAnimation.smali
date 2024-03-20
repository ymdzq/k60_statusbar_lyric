.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;
.super Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mColonAodState:Lmiuix/animation/controller/AnimState;

.field public mColonLockState:Lmiuix/animation/controller/AnimState;

.field public mColonNoticeState:Lmiuix/animation/controller/AnimState;

.field public final mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

.field public final mNotificationHeight:F


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    new-instance p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 5
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 10
    const/high16 p1, 0x432e0000    # 174.0f

    .line 12
    iput p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mNotificationHeight:F

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final doAnimationToNotification(ZZ)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doAnimationToNotification(ZZ)V

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 24
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 26
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mNoticeEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 28
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonNoticeState:Lmiuix/animation/controller/AnimState;

    .line 30
    const-wide/16 v5, 0x10

    .line 32
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    move-object v0, p0

    .line 36
    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumNotificationAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;JZZ)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 41
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 43
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mElegantEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 45
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonLockState:Lmiuix/animation/controller/AnimState;

    .line 47
    const-wide/16 v5, 0x0

    .line 49
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumNotificationAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;JZZ)V

    .line 54
    :cond_2
    :goto_0
    return-void
    .line 57
.end method

.method public final doViewAnimation(ZZ)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doViewAnimation(ZZ)V

    .line 2
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSpecialEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 9
    const/4 v2, -0x2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 13
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 15
    new-instance v5, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    new-array v1, v1, [F

    .line 19
    fill-array-data v1, :array_0

    .line 21
    invoke-direct {v5, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 24
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationToAodSpecialEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 27
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonAodState:Lmiuix/animation/controller/AnimState;

    .line 29
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move-object v1, v3

    .line 34
    move-object v2, v4

    .line 35
    move-object v3, v5

    .line 36
    move-object v4, v6

    .line 37
    move-object v5, v7

    .line 38
    move v6, v8

    .line 39
    move v7, v9

    .line 40
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 45
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 47
    new-instance v6, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 49
    new-array v1, v1, [F

    .line 51
    fill-array-data v1, :array_1

    .line 53
    invoke-direct {v6, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 56
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonAodState:Lmiuix/animation/controller/AnimState;

    .line 59
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    move-object v0, p0

    .line 63
    move-object v1, v3

    .line 64
    move-object v2, v5

    .line 65
    move-object v3, v6

    .line 66
    move-object v5, v7

    .line 67
    move v6, v8

    .line 68
    move v7, v9

    .line 69
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 76
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 78
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mNoticeEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 80
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonNoticeState:Lmiuix/animation/controller/AnimState;

    .line 82
    const-wide/16 v5, 0x10

    .line 84
    const/4 v7, 0x0

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumNotificationAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;JZZ)V

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 93
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 95
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 97
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonLockState:Lmiuix/animation/controller/AnimState;

    .line 99
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    move-object v0, p0

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 104
    :goto_0
    return-void

    .line 107
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ee147ae    # 0.44f
    .end array-data

    .line 108
    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f19999a    # 0.6f
    .end array-data
    .line 116
.end method

.method public final initParams(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInitParams:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonNoticeState:Lmiuix/animation/controller/AnimState;

    .line 18
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 28
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonLockState:Lmiuix/animation/controller/AnimState;

    .line 32
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 34
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initParams(Z)V

    .line 37
    return-void
    .line 40
.end method

.method public final initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initView()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    sget v1, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->SVG_I_NOTIFICATION_COLON:I

    .line 11
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 19
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonTextColor:[I

    .line 21
    const/4 v3, 0x0

    .line 23
    aget v2, v2, v3

    .line 24
    invoke-static {v0, v2}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 38
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mNotificationHeight:F

    .line 50
    iget v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 52
    mul-float/2addr v1, v2

    .line 54
    float-to-int v1, v1

    .line 55
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 65
    return-void
    .line 68
.end method

.method public final updateAodState()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateAodState()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 5
    instance-of v0, v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->HOUR1:Lcom/miui/clock/module/ClockViewType;

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 13
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 15
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1AodState:Lmiuix/animation/controller/AnimState;

    .line 19
    float-to-double v3, v0

    .line 21
    const-string v0, "angel"

    .line 22
    invoke-virtual {v2, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->HOUR2:Lcom/miui/clock/module/ClockViewType;

    .line 27
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 29
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2AodState:Lmiuix/animation/controller/AnimState;

    .line 33
    float-to-double v4, v2

    .line 35
    invoke-virtual {v3, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 36
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1AodState:Lmiuix/animation/controller/AnimState;

    .line 39
    const-string/jumbo v3, "viewAlpha"

    .line 41
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 44
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 46
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2AodState:Lmiuix/animation/controller/AnimState;

    .line 49
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 51
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 54
    const-string v6, "colonAodState"

    .line 56
    invoke-direct {v2, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 58
    const-string/jumbo v6, "viewScaleX"

    .line 61
    invoke-virtual {v2, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object v2

    .line 67
    const-string/jumbo v6, "viewScaleY"

    .line 68
    invoke-virtual {v2, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 71
    move-result-object v2

    .line 74
    const-string/jumbo v4, "viewTranslationX"

    .line 75
    const-wide/16 v5, 0x0

    .line 78
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 80
    move-result-object v2

    .line 83
    const-string/jumbo v4, "viewTranslationY"

    .line 84
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 87
    move-result-object v2

    .line 90
    invoke-virtual {v2, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 91
    move-result-object v2

    .line 94
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonAodState:Lmiuix/animation/controller/AnimState;

    .line 95
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 97
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 99
    move-result v2

    .line 102
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1AodState:Lmiuix/animation/controller/AnimState;

    .line 103
    float-to-double v4, v2

    .line 105
    invoke-virtual {v3, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 106
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 109
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 111
    move-result v1

    .line 114
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2AodState:Lmiuix/animation/controller/AnimState;

    .line 115
    float-to-double v1, v1

    .line 117
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 118
    :cond_0
    return-void
    .line 121
.end method

.method public final updateLockState()V
    .locals 15

    .line 1
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->HOUR1:Lcom/miui/clock/module/ClockViewType;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 4
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 6
    move-result v0

    .line 9
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 10
    const-string v3, "hour1LockState"

    .line 12
    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 14
    float-to-double v3, v0

    .line 17
    const-string v0, "angel"

    .line 18
    invoke-virtual {v2, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "viewScaleX"

    .line 24
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 27
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 29
    move-result-object v2

    .line 32
    const-string/jumbo v6, "viewScaleY"

    .line 33
    invoke-virtual {v2, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 36
    move-result-object v2

    .line 39
    const-string/jumbo v7, "viewTranslationX"

    .line 40
    const-wide/16 v8, 0x0

    .line 43
    invoke-virtual {v2, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 45
    move-result-object v2

    .line 48
    const-string/jumbo v10, "viewTranslationY"

    .line 49
    invoke-virtual {v2, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 52
    move-result-object v2

    .line 55
    const-string/jumbo v11, "viewAlpha"

    .line 56
    invoke-virtual {v2, v11, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 59
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1LockState:Lmiuix/animation/controller/AnimState;

    .line 63
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->HOUR2:Lcom/miui/clock/module/ClockViewType;

    .line 65
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 67
    move-result v2

    .line 70
    new-instance v12, Lmiuix/animation/controller/AnimState;

    .line 71
    const-string v13, "hour2LockState"

    .line 73
    invoke-direct {v12, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 75
    float-to-double v13, v2

    .line 78
    invoke-virtual {v12, v0, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 83
    move-result-object v2

    .line 86
    invoke-virtual {v2, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 87
    move-result-object v2

    .line 90
    invoke-virtual {v2, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 91
    move-result-object v2

    .line 94
    invoke-virtual {v2, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 95
    move-result-object v2

    .line 98
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2LockState:Lmiuix/animation/controller/AnimState;

    .line 99
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 101
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 103
    move-result v2

    .line 106
    new-instance v12, Lmiuix/animation/controller/AnimState;

    .line 107
    const-string v13, "min1LockState"

    .line 109
    invoke-direct {v12, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 111
    float-to-double v13, v2

    .line 114
    invoke-virtual {v12, v0, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 115
    move-result-object v2

    .line 118
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 119
    move-result-object v2

    .line 122
    invoke-virtual {v2, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 123
    move-result-object v2

    .line 126
    invoke-virtual {v2, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 127
    move-result-object v2

    .line 130
    invoke-virtual {v2, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 131
    move-result-object v2

    .line 134
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1LockState:Lmiuix/animation/controller/AnimState;

    .line 135
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 137
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 139
    move-result v1

    .line 142
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 143
    const-string v12, "min2LockState"

    .line 145
    invoke-direct {v2, v12}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 147
    float-to-double v12, v1

    .line 150
    invoke-virtual {v2, v0, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 151
    move-result-object v0

    .line 154
    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 155
    move-result-object v0

    .line 158
    invoke-virtual {v0, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 159
    move-result-object v0

    .line 162
    invoke-virtual {v0, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 163
    move-result-object v0

    .line 166
    invoke-virtual {v0, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 167
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2LockState:Lmiuix/animation/controller/AnimState;

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 173
    const/4 v1, 0x0

    .line 175
    aget v2, v0, v1

    .line 176
    const/4 v12, 0x7

    .line 178
    aget v0, v0, v12

    .line 179
    sub-int/2addr v2, v0

    .line 181
    div-int/lit8 v2, v2, 0x2

    .line 182
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getColonInterval()F

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 187
    aget v1, v0, v1

    .line 189
    aget v0, v0, v12

    .line 191
    const-string v0, "colon1LockState"

    .line 193
    invoke-static {v0, v3, v4, v5}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 195
    move-result-object v0

    .line 198
    invoke-virtual {v0, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 199
    move-result-object v0

    .line 202
    invoke-virtual {v0, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 203
    move-result-object v0

    .line 206
    invoke-virtual {v0, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 207
    move-result-object v0

    .line 210
    invoke-virtual {v0, v11, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 211
    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1LockState:Lmiuix/animation/controller/AnimState;

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 217
    aget v0, v0, v12

    .line 219
    const-string v0, "colon2LockState"

    .line 221
    invoke-static {v0, v3, v4, v5}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 223
    move-result-object v0

    .line 226
    invoke-virtual {v0, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 227
    move-result-object v0

    .line 230
    invoke-virtual {v0, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 231
    move-result-object v0

    .line 234
    invoke-virtual {v0, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 235
    move-result-object v0

    .line 238
    invoke-virtual {v0, v11, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 239
    move-result-object v0

    .line 242
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2LockState:Lmiuix/animation/controller/AnimState;

    .line 243
    const-string v0, "colonLockState"

    .line 245
    invoke-static {v0, v3, v4, v5}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 247
    move-result-object v0

    .line 250
    invoke-virtual {v0, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 251
    move-result-object v0

    .line 254
    invoke-virtual {v0, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 255
    move-result-object v0

    .line 258
    invoke-virtual {v0, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 259
    move-result-object v0

    .line 262
    invoke-virtual {v0, v11, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 263
    move-result-object v0

    .line 266
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonLockState:Lmiuix/animation/controller/AnimState;

    .line 267
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1LockState:Lmiuix/animation/controller/AnimState;

    .line 269
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2LockState:Lmiuix/animation/controller/AnimState;

    .line 271
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1LockState:Lmiuix/animation/controller/AnimState;

    .line 273
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2LockState:Lmiuix/animation/controller/AnimState;

    .line 275
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1LockState:Lmiuix/animation/controller/AnimState;

    .line 277
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2LockState:Lmiuix/animation/controller/AnimState;

    .line 279
    filled-new-array/range {v1 .. v6}, [Lmiuix/animation/controller/AnimState;

    .line 281
    move-result-object v0

    .line 284
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mLockStates:[Lmiuix/animation/controller/AnimState;

    .line 285
    return-void
    .line 287
.end method

.method public final updateNoticeState()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 4
    move-result v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 15
    sub-float/2addr v2, v3

    .line 17
    const/high16 v3, 0x3f000000    # 0.5f

    .line 18
    mul-float/2addr v2, v3

    .line 20
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 21
    check-cast v4, Lcom/miui/clock/rhombus/MiuiRhombusBase;

    .line 23
    invoke-virtual {v4}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getStyle()Lcom/miui/clock/module/BaseFontStyle;

    .line 25
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerMarginOffset()I

    .line 29
    move-result v5

    .line 32
    int-to-float v5, v5

    .line 33
    iget v6, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 34
    mul-float/2addr v5, v6

    .line 36
    float-to-int v5, v5

    .line 37
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColonResourceWidth()I

    .line 38
    move-result v6

    .line 41
    int-to-float v6, v6

    .line 42
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 43
    mul-float/2addr v6, v7

    .line 45
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 46
    check-cast v7, Lcom/miui/clock/MiuiClockNumberView;

    .line 48
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 50
    check-cast v8, Lcom/miui/clock/MiuiClockNumberView;

    .line 52
    iget-object v9, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 54
    check-cast v9, Lcom/miui/clock/MiuiClockNumberView;

    .line 56
    iget-object v10, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 58
    check-cast v10, Lcom/miui/clock/MiuiClockNumberView;

    .line 60
    iget-object v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 62
    const/4 v12, 0x0

    .line 64
    aget v11, v11, v12

    .line 65
    int-to-float v11, v11

    .line 67
    iget v12, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 68
    invoke-virtual {v0, v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 70
    move-result v13

    .line 73
    int-to-float v13, v13

    .line 74
    mul-float/2addr v13, v1

    .line 75
    invoke-virtual {v0, v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 76
    move-result v14

    .line 79
    int-to-float v14, v14

    .line 80
    add-float/2addr v13, v14

    .line 81
    add-float/2addr v13, v6

    .line 82
    invoke-virtual {v0, v9}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 83
    move-result v14

    .line 86
    int-to-float v14, v14

    .line 87
    add-float/2addr v13, v14

    .line 88
    invoke-virtual {v0, v10}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 89
    move-result v14

    .line 92
    int-to-float v14, v14

    .line 93
    add-float/2addr v13, v14

    .line 94
    mul-float/2addr v13, v12

    .line 95
    sub-float/2addr v11, v13

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 97
    move-result v12

    .line 100
    if-eqz v12, :cond_1

    .line 101
    mul-int/lit8 v12, v5, 0x4

    .line 103
    goto :goto_1

    .line 105
    :cond_1
    mul-int/lit8 v12, v5, 0x3

    .line 106
    :goto_1
    int-to-float v12, v12

    .line 108
    sub-float/2addr v11, v12

    .line 109
    mul-float/2addr v11, v3

    .line 110
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 111
    const/4 v12, 0x3

    .line 113
    aget v3, v3, v12

    .line 114
    int-to-float v3, v3

    .line 116
    mul-float/2addr v3, v2

    .line 117
    sub-float v3, v11, v3

    .line 118
    invoke-virtual {v0, v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 120
    move-result v13

    .line 123
    int-to-float v13, v13

    .line 124
    iget v14, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 125
    mul-float/2addr v13, v14

    .line 127
    sub-float/2addr v3, v13

    .line 128
    iget-object v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 129
    aget v12, v13, v12

    .line 131
    neg-int v12, v12

    .line 133
    int-to-float v12, v12

    .line 134
    mul-float/2addr v12, v2

    .line 135
    iget v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 136
    add-float/2addr v12, v13

    .line 138
    invoke-virtual {v7}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 139
    move-result v13

    .line 142
    int-to-float v13, v13

    .line 143
    iget v14, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 144
    mul-float/2addr v13, v14

    .line 146
    sub-float/2addr v12, v13

    .line 147
    const/4 v13, 0x2

    .line 148
    new-array v13, v13, [I

    .line 149
    sget-object v14, Lcom/miui/clock/module/ClockViewType;->HOUR1:Lcom/miui/clock/module/ClockViewType;

    .line 151
    iget-object v15, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 153
    invoke-virtual {v15, v14, v13}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 155
    iget-object v14, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 158
    const/16 v16, 0x1

    .line 160
    aget v17, v14, v16

    .line 162
    const/16 v18, 0x3

    .line 164
    aget v14, v14, v18

    .line 166
    sub-int v14, v17, v14

    .line 168
    int-to-float v14, v14

    .line 170
    const/16 v17, 0x0

    .line 171
    move-object/from16 v18, v10

    .line 173
    aget v10, v13, v17

    .line 175
    int-to-float v10, v10

    .line 177
    move-object/from16 v17, v9

    .line 178
    iget v9, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 180
    mul-float/2addr v10, v9

    .line 182
    sub-float/2addr v14, v10

    .line 183
    aget v10, v13, v16

    .line 184
    int-to-float v10, v10

    .line 186
    mul-float/2addr v10, v9

    .line 187
    const-string v9, "hour1NoticeState"

    .line 188
    const-string v13, "angel"

    .line 190
    move/from16 v19, v5

    .line 192
    move/from16 v20, v6

    .line 194
    const-wide/16 v5, 0x0

    .line 196
    invoke-static {v9, v13, v5, v6}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 198
    move-result-object v5

    .line 201
    sub-float/2addr v3, v14

    .line 202
    move-object v6, v4

    .line 203
    float-to-double v3, v3

    .line 204
    const-string/jumbo v9, "viewTranslationX"

    .line 205
    invoke-virtual {v5, v9, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 208
    move-result-object v3

    .line 211
    sub-float/2addr v12, v10

    .line 212
    float-to-double v4, v12

    .line 213
    const-string/jumbo v10, "viewTranslationY"

    .line 214
    invoke-virtual {v3, v10, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 217
    move-result-object v3

    .line 220
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 221
    float-to-double v4, v4

    .line 223
    const-string/jumbo v12, "viewScaleX"

    .line 224
    invoke-virtual {v3, v12, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 227
    move-result-object v3

    .line 230
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 231
    float-to-double v4, v4

    .line 233
    const-string/jumbo v14, "viewScaleY"

    .line 234
    invoke-virtual {v3, v14, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 237
    move-result-object v3

    .line 240
    float-to-double v4, v1

    .line 241
    move-object/from16 v21, v6

    .line 242
    const-string/jumbo v6, "viewAlpha"

    .line 244
    invoke-virtual {v3, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 247
    move-result-object v3

    .line 250
    iput-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 251
    invoke-virtual {v0, v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 253
    move-result v3

    .line 256
    invoke-virtual {v7}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 257
    move-result v4

    .line 260
    add-int/2addr v4, v3

    .line 261
    int-to-float v3, v4

    .line 262
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 263
    invoke-static {v3, v4, v1, v11}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 265
    move-result v1

    .line 268
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 269
    const/4 v4, 0x4

    .line 271
    aget v3, v3, v4

    .line 272
    int-to-float v3, v3

    .line 274
    mul-float/2addr v3, v2

    .line 275
    sub-float v3, v1, v3

    .line 276
    invoke-virtual {v0, v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 278
    move-result v5

    .line 281
    int-to-float v5, v5

    .line 282
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 283
    mul-float/2addr v5, v7

    .line 285
    sub-float/2addr v3, v5

    .line 286
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 287
    aget v4, v5, v4

    .line 289
    neg-int v4, v4

    .line 291
    int-to-float v4, v4

    .line 292
    mul-float/2addr v4, v2

    .line 293
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 294
    add-float/2addr v4, v5

    .line 296
    invoke-virtual {v8}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 297
    move-result v5

    .line 300
    int-to-float v5, v5

    .line 301
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 302
    mul-float/2addr v5, v7

    .line 304
    sub-float/2addr v4, v5

    .line 305
    const/4 v5, 0x2

    .line 306
    new-array v5, v5, [I

    .line 307
    sget-object v7, Lcom/miui/clock/module/ClockViewType;->HOUR2:Lcom/miui/clock/module/ClockViewType;

    .line 309
    invoke-virtual {v15, v7, v5}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 311
    const/4 v7, 0x0

    .line 314
    aget v7, v5, v7

    .line 315
    int-to-float v7, v7

    .line 317
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 318
    mul-float/2addr v7, v11

    .line 320
    aget v5, v5, v16

    .line 321
    int-to-float v5, v5

    .line 323
    mul-float/2addr v5, v11

    .line 324
    const-string v11, "hour2NoticeState"

    .line 325
    move/from16 v23, v1

    .line 327
    move/from16 v22, v2

    .line 329
    const-wide/16 v1, 0x0

    .line 331
    invoke-static {v11, v13, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 333
    move-result-object v1

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 337
    move-result v2

    .line 340
    if-eqz v2, :cond_2

    .line 341
    const/4 v2, 0x0

    .line 343
    goto :goto_2

    .line 344
    :cond_2
    move/from16 v2, v19

    .line 345
    :goto_2
    int-to-float v2, v2

    .line 347
    add-float/2addr v3, v2

    .line 348
    sub-float/2addr v3, v7

    .line 349
    float-to-double v2, v3

    .line 350
    invoke-virtual {v1, v9, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 351
    move-result-object v1

    .line 354
    sub-float/2addr v4, v5

    .line 355
    float-to-double v2, v4

    .line 356
    invoke-virtual {v1, v10, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 357
    move-result-object v1

    .line 360
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 361
    float-to-double v2, v2

    .line 363
    invoke-virtual {v1, v12, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 364
    move-result-object v1

    .line 367
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 368
    float-to-double v2, v2

    .line 370
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 371
    move-result-object v1

    .line 374
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 375
    invoke-virtual {v0, v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 377
    move-result v1

    .line 380
    invoke-virtual {v8}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 381
    move-result v2

    .line 384
    add-int/2addr v2, v1

    .line 385
    int-to-float v1, v2

    .line 386
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 387
    mul-float/2addr v1, v2

    .line 389
    add-float v1, v1, v23

    .line 390
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 392
    const/4 v3, 0x7

    .line 394
    aget v2, v2, v3

    .line 395
    int-to-float v2, v2

    .line 397
    mul-float v2, v2, v22

    .line 398
    sub-float v2, v1, v2

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getColonInterval()F

    .line 402
    move-result v4

    .line 405
    invoke-virtual/range {v21 .. v21}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColon1MarginInnerTop()F

    .line 406
    move-result v5

    .line 409
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 410
    mul-float/2addr v5, v7

    .line 412
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 413
    aget v3, v7, v3

    .line 415
    int-to-float v11, v3

    .line 417
    mul-float v23, v11, v22

    .line 418
    sub-float v24, v5, v23

    .line 420
    move-object/from16 v25, v13

    .line 422
    iget v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 424
    add-float v24, v24, v13

    .line 426
    add-float/2addr v11, v4

    .line 428
    move-object/from16 v26, v15

    .line 429
    iget v15, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 431
    mul-float/2addr v11, v15

    .line 433
    add-float/2addr v11, v5

    .line 434
    sub-float v11, v11, v23

    .line 435
    add-float/2addr v11, v13

    .line 437
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 438
    const/4 v13, 0x0

    .line 440
    aget v15, v5, v13

    .line 441
    const/16 v23, 0x7

    .line 443
    aget v5, v5, v23

    .line 445
    sub-int/2addr v15, v5

    .line 447
    int-to-float v5, v15

    .line 448
    const/high16 v15, 0x3f000000    # 0.5f

    .line 449
    mul-float/2addr v5, v15

    .line 451
    aget v7, v7, v13

    .line 452
    mul-int/lit8 v3, v3, 0x2

    .line 454
    sub-int/2addr v7, v3

    .line 456
    int-to-float v3, v7

    .line 457
    sub-float/2addr v3, v4

    .line 458
    mul-float/2addr v3, v15

    .line 459
    new-instance v7, Lmiuix/animation/controller/AnimState;

    .line 460
    const-string v13, "colon1NoticeState"

    .line 462
    invoke-direct {v7, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 467
    move-result v13

    .line 470
    if-eqz v13, :cond_3

    .line 471
    move/from16 v13, v19

    .line 473
    goto :goto_3

    .line 475
    :cond_3
    mul-int/lit8 v13, v19, 0x2

    .line 476
    :goto_3
    int-to-float v13, v13

    .line 478
    add-float/2addr v13, v2

    .line 479
    sub-float/2addr v13, v5

    .line 480
    move v15, v4

    .line 481
    move/from16 v23, v5

    .line 482
    float-to-double v4, v13

    .line 484
    invoke-virtual {v7, v9, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 485
    move-result-object v4

    .line 488
    sub-float v5, v24, v3

    .line 489
    move-object v13, v8

    .line 491
    float-to-double v7, v5

    .line 492
    invoke-virtual {v4, v10, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 493
    move-result-object v4

    .line 496
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 497
    float-to-double v7, v5

    .line 499
    invoke-virtual {v4, v12, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 500
    move-result-object v4

    .line 503
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 504
    float-to-double v7, v5

    .line 506
    invoke-virtual {v4, v14, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 507
    move-result-object v4

    .line 510
    const-wide/16 v7, 0x0

    .line 511
    invoke-virtual {v4, v6, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 513
    move-result-object v4

    .line 516
    iput-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 517
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 519
    const-string v5, "colon2NoticeState"

    .line 521
    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 526
    move-result v5

    .line 529
    if-eqz v5, :cond_4

    .line 530
    move/from16 v5, v19

    .line 532
    goto :goto_4

    .line 534
    :cond_4
    mul-int/lit8 v5, v19, 0x2

    .line 535
    :goto_4
    int-to-float v5, v5

    .line 537
    add-float/2addr v5, v2

    .line 538
    sub-float v5, v5, v23

    .line 539
    float-to-double v7, v5

    .line 541
    invoke-virtual {v4, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 542
    move-result-object v4

    .line 545
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 546
    const/4 v7, 0x7

    .line 548
    aget v5, v5, v7

    .line 549
    int-to-float v5, v5

    .line 551
    add-float/2addr v3, v5

    .line 552
    add-float/2addr v3, v15

    .line 553
    sub-float/2addr v11, v3

    .line 554
    float-to-double v7, v11

    .line 555
    invoke-virtual {v4, v10, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 556
    move-result-object v3

    .line 559
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 560
    float-to-double v4, v4

    .line 562
    invoke-virtual {v3, v12, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 563
    move-result-object v3

    .line 566
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 567
    float-to-double v4, v4

    .line 569
    invoke-virtual {v3, v14, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 570
    move-result-object v3

    .line 573
    const-wide/16 v4, 0x0

    .line 574
    invoke-virtual {v3, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 576
    move-result-object v3

    .line 579
    iput-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 580
    invoke-virtual/range {v21 .. v21}, Lcom/miui/clock/module/BaseFontStyle;->getNotificationColonWidth()F

    .line 582
    move-result v3

    .line 585
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 586
    mul-float/2addr v3, v4

    .line 588
    invoke-virtual/range {v21 .. v21}, Lcom/miui/clock/module/BaseFontStyle;->getNotificationColonHeight()F

    .line 589
    move-result v4

    .line 592
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 593
    mul-float/2addr v4, v5

    .line 595
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 596
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 598
    move-result-object v5

    .line 601
    float-to-int v4, v4

    .line 602
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 603
    float-to-int v3, v3

    .line 605
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 606
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 608
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    new-instance v3, Lmiuix/animation/controller/AnimState;

    .line 613
    const-string v4, "mColonNoticeState"

    .line 615
    invoke-direct {v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 620
    move-result v4

    .line 623
    if-eqz v4, :cond_5

    .line 624
    move/from16 v5, v19

    .line 626
    goto :goto_5

    .line 628
    :cond_5
    mul-int/lit8 v5, v19, 0x2

    .line 629
    :goto_5
    int-to-float v4, v5

    .line 631
    add-float/2addr v2, v4

    .line 632
    sub-float v2, v2, v23

    .line 633
    float-to-double v4, v2

    .line 635
    invoke-virtual {v3, v9, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 636
    move-result-object v2

    .line 639
    iget v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 640
    const/high16 v4, 0x438c0000    # 280.0f

    .line 642
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 644
    mul-float/2addr v5, v4

    .line 646
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 647
    mul-float/2addr v5, v4

    .line 649
    sub-float/2addr v3, v5

    .line 650
    float-to-double v3, v3

    .line 651
    invoke-virtual {v2, v10, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 652
    move-result-object v2

    .line 655
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 656
    invoke-virtual {v2, v12, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 658
    move-result-object v2

    .line 661
    invoke-virtual {v2, v14, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 662
    move-result-object v2

    .line 665
    invoke-virtual {v2, v6, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 666
    move-result-object v2

    .line 669
    iput-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;->mColonNoticeState:Lmiuix/animation/controller/AnimState;

    .line 670
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 672
    const/4 v3, 0x0

    .line 674
    aget v3, v2, v3

    .line 675
    const/4 v4, 0x2

    .line 677
    aget v2, v2, v4

    .line 678
    sub-int/2addr v3, v2

    .line 680
    invoke-virtual {v13}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 681
    move-result v2

    .line 684
    int-to-float v2, v2

    .line 685
    add-float v6, v20, v2

    .line 686
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 688
    mul-float/2addr v6, v2

    .line 690
    add-float/2addr v6, v1

    .line 691
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 692
    const/4 v2, 0x5

    .line 694
    aget v1, v1, v2

    .line 695
    int-to-float v1, v1

    .line 697
    mul-float v1, v1, v22

    .line 698
    sub-float v1, v6, v1

    .line 700
    move-object/from16 v4, v17

    .line 702
    invoke-virtual {v0, v4}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 704
    move-result v5

    .line 707
    int-to-float v5, v5

    .line 708
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 709
    mul-float/2addr v5, v7

    .line 711
    sub-float/2addr v1, v5

    .line 712
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 713
    aget v5, v5, v2

    .line 715
    neg-int v5, v5

    .line 717
    int-to-float v5, v5

    .line 718
    mul-float v5, v5, v22

    .line 719
    int-to-float v3, v3

    .line 721
    sub-float/2addr v5, v3

    .line 722
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 723
    add-float/2addr v5, v7

    .line 725
    invoke-virtual {v4}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 726
    move-result v7

    .line 729
    int-to-float v7, v7

    .line 730
    iget v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 731
    mul-float/2addr v7, v8

    .line 733
    sub-float/2addr v5, v7

    .line 734
    const/4 v7, 0x2

    .line 735
    new-array v8, v7, [I

    .line 736
    sget-object v11, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 738
    move-object/from16 v13, v26

    .line 740
    invoke-virtual {v13, v11, v8}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 742
    iget-object v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 745
    aget v7, v11, v7

    .line 747
    aget v2, v11, v2

    .line 749
    sub-int/2addr v7, v2

    .line 751
    int-to-float v2, v7

    .line 752
    const/4 v7, 0x0

    .line 753
    aget v7, v8, v7

    .line 754
    int-to-float v7, v7

    .line 756
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 757
    mul-float/2addr v7, v11

    .line 759
    sub-float/2addr v2, v7

    .line 760
    aget v7, v8, v16

    .line 761
    int-to-float v7, v7

    .line 763
    mul-float/2addr v7, v11

    .line 764
    const-string v8, "min1NoticeState"

    .line 765
    move v11, v3

    .line 767
    const-wide/16 v3, 0x0

    .line 768
    move-object/from16 v15, v25

    .line 770
    invoke-static {v8, v15, v3, v4}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 772
    move-result-object v3

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 776
    move-result v4

    .line 779
    if-eqz v4, :cond_6

    .line 780
    mul-int/lit8 v4, v19, 0x2

    .line 782
    goto :goto_6

    .line 784
    :cond_6
    mul-int/lit8 v4, v19, 0x3

    .line 785
    :goto_6
    int-to-float v4, v4

    .line 787
    add-float/2addr v1, v4

    .line 788
    sub-float/2addr v1, v2

    .line 789
    float-to-double v1, v1

    .line 790
    invoke-virtual {v3, v9, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 791
    move-result-object v1

    .line 794
    sub-float/2addr v5, v7

    .line 795
    float-to-double v2, v5

    .line 796
    invoke-virtual {v1, v10, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 797
    move-result-object v1

    .line 800
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 801
    float-to-double v2, v2

    .line 803
    invoke-virtual {v1, v12, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 804
    move-result-object v1

    .line 807
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 808
    float-to-double v2, v2

    .line 810
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 811
    move-result-object v1

    .line 814
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 815
    move-object/from16 v1, v17

    .line 817
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 819
    move-result v2

    .line 822
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 823
    move-result v1

    .line 826
    add-int/2addr v1, v2

    .line 827
    int-to-float v1, v1

    .line 828
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 829
    mul-float/2addr v1, v2

    .line 831
    add-float/2addr v1, v6

    .line 832
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 833
    const/4 v3, 0x6

    .line 835
    aget v2, v2, v3

    .line 836
    int-to-float v2, v2

    .line 838
    mul-float v2, v2, v22

    .line 839
    sub-float/2addr v1, v2

    .line 841
    move-object/from16 v2, v18

    .line 842
    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 844
    move-result v4

    .line 847
    int-to-float v4, v4

    .line 848
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 849
    mul-float/2addr v4, v5

    .line 851
    sub-float/2addr v1, v4

    .line 852
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 853
    aget v3, v4, v3

    .line 855
    neg-int v3, v3

    .line 857
    int-to-float v3, v3

    .line 858
    mul-float v3, v3, v22

    .line 859
    sub-float/2addr v3, v11

    .line 861
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 862
    add-float/2addr v3, v4

    .line 864
    invoke-virtual {v2}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 865
    move-result v2

    .line 868
    int-to-float v2, v2

    .line 869
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 870
    mul-float/2addr v2, v4

    .line 872
    sub-float/2addr v3, v2

    .line 873
    const/4 v2, 0x2

    .line 874
    new-array v2, v2, [I

    .line 875
    sget-object v4, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 877
    invoke-virtual {v13, v4, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 879
    const/4 v4, 0x0

    .line 882
    aget v4, v2, v4

    .line 883
    int-to-float v4, v4

    .line 885
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 886
    mul-float/2addr v4, v5

    .line 888
    aget v2, v2, v16

    .line 889
    int-to-float v2, v2

    .line 891
    mul-float/2addr v2, v5

    .line 892
    const-string v5, "min2NoticeState"

    .line 893
    const-wide/16 v6, 0x0

    .line 895
    invoke-static {v5, v15, v6, v7}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 897
    move-result-object v5

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 901
    move-result v6

    .line 904
    if-eqz v6, :cond_7

    .line 905
    mul-int/lit8 v6, v19, 0x3

    .line 907
    goto :goto_7

    .line 909
    :cond_7
    mul-int/lit8 v6, v19, 0x4

    .line 910
    :goto_7
    int-to-float v6, v6

    .line 912
    add-float/2addr v1, v6

    .line 913
    sub-float/2addr v1, v4

    .line 914
    float-to-double v6, v1

    .line 915
    invoke-virtual {v5, v9, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 916
    move-result-object v1

    .line 919
    sub-float/2addr v3, v2

    .line 920
    float-to-double v2, v3

    .line 921
    invoke-virtual {v1, v10, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 922
    move-result-object v1

    .line 925
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 926
    float-to-double v2, v2

    .line 928
    invoke-virtual {v1, v12, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 929
    move-result-object v1

    .line 932
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 933
    float-to-double v2, v2

    .line 935
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 936
    move-result-object v9

    .line 939
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 940
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 942
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 944
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 946
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 948
    filled-new-array/range {v4 .. v9}, [Lmiuix/animation/controller/AnimState;

    .line 950
    move-result-object v1

    .line 953
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeStates:[Lmiuix/animation/controller/AnimState;

    .line 954
    return-void
    .line 956
.end method
