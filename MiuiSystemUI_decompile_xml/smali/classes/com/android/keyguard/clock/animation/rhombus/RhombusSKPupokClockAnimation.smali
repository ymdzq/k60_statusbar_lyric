.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;
.super Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mColon1DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

.field public final mColon2DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

.field public final mNotificationHeight:F

.field public final mSkAodState:Lmiuix/animation/controller/AnimState;

.field public final mSkInitState:Lmiuix/animation/controller/AnimState;

.field public final mSkLockState:Lmiuix/animation/controller/AnimState;

.field public final mToAodDelay:[F

.field public final skParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;


# direct methods
.method public static -$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->skParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    aget-object v2, p0, v1

    .line 8
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "pl"

    .line 18
    const-string v4, "pr"

    .line 20
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 25
    invoke-interface {v2, v3}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    return-void
    .line 32
.end method

.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    const/4 p1, 0x6

    .line 5
    new-array p1, p1, [F

    .line 6
    fill-array-data p1, :array_0

    .line 8
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mToAodDelay:[F

    .line 11
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 13
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 15
    const-string v0, "pl"

    .line 18
    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object p1

    .line 25
    const-string v3, "pr"

    .line 26
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 28
    invoke-virtual {p1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 30
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkAodState:Lmiuix/animation/controller/AnimState;

    .line 34
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 36
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 38
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 41
    invoke-virtual {p1, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p1, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 47
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkLockState:Lmiuix/animation/controller/AnimState;

    .line 51
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 53
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 55
    const-wide/16 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p1, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkInitState:Lmiuix/animation/controller/AnimState;

    .line 68
    new-instance v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 70
    invoke-direct {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;-><init>()V

    .line 72
    new-instance v1, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 75
    invoke-direct {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;-><init>()V

    .line 77
    new-instance v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 80
    invoke-direct {v4}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;-><init>()V

    .line 82
    new-instance v5, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 85
    invoke-direct {v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;-><init>()V

    .line 87
    new-instance v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 90
    invoke-direct {v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;-><init>()V

    .line 92
    new-instance v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 95
    invoke-direct {v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;-><init>()V

    .line 97
    filled-new-array/range {v0 .. v5}, [Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 100
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->skParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 104
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 106
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon1DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 111
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 113
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon2DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 118
    const/high16 p1, 0x42a40000    # 82.0f

    .line 120
    iput p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mNotificationHeight:F

    .line 122
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
    .line 126
.end method

.method public static perlin(F)F
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 4
    move-result-wide v2

    .line 7
    double-to-float v2, v2

    .line 8
    float-to-double v2, v2

    .line 9
    const-wide v4, 0x4000cccccccccccdL    # 2.1

    .line 10
    mul-double/2addr v4, v0

    .line 15
    float-to-double v6, p0

    .line 16
    add-double/2addr v4, v6

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 18
    move-result-wide v4

    .line 21
    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    .line 22
    mul-double/2addr v4, v8

    .line 24
    add-double/2addr v4, v2

    .line 25
    double-to-float p0, v4

    .line 26
    float-to-double v2, p0

    .line 27
    const-wide v4, 0x3ffb851eb851eb85L    # 1.72

    .line 28
    mul-double/2addr v4, v0

    .line 33
    const-wide v8, 0x3ff1ef9db22d0e56L    # 1.121

    .line 34
    mul-double/2addr v8, v6

    .line 39
    add-double/2addr v8, v4

    .line 40
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 41
    move-result-wide v4

    .line 44
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 45
    mul-double/2addr v4, v8

    .line 47
    add-double/2addr v4, v2

    .line 48
    double-to-float p0, v4

    .line 49
    float-to-double v2, p0

    .line 50
    const-wide v4, 0x4001c49ba5e353f8L    # 2.221

    .line 51
    mul-double/2addr v4, v0

    .line 56
    const-wide v8, 0x3fdbf7ced916872bL    # 0.437

    .line 57
    mul-double/2addr v8, v6

    .line 62
    add-double/2addr v8, v4

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 64
    move-result-wide v4

    .line 67
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    .line 68
    mul-double/2addr v4, v8

    .line 70
    add-double/2addr v4, v2

    .line 71
    double-to-float p0, v4

    .line 72
    float-to-double v2, p0

    .line 73
    const-wide v4, 0x4008e5c91d14e3bdL    # 3.1122

    .line 74
    mul-double/2addr v0, v4

    .line 79
    const-wide v4, 0x40111374bc6a7efaL    # 4.269

    .line 80
    mul-double/2addr v6, v4

    .line 85
    add-double/2addr v6, v0

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 87
    move-result-wide v0

    .line 90
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    .line 91
    mul-double/2addr v0, v4

    .line 93
    add-double/2addr v0, v2

    .line 94
    double-to-float p0, v0

    .line 95
    float-to-double v0, p0

    .line 96
    const/high16 p0, 0x3f800000    # 1.0f

    .line 97
    float-to-double v2, p0

    .line 99
    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    .line 100
    mul-double/2addr v2, v4

    .line 105
    mul-double/2addr v2, v0

    .line 106
    double-to-float p0, v2

    .line 107
    return p0
    .line 108
.end method


# virtual methods
.method public final doAnimationToNotification(ZZ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doAnimationToNotification(ZZ)V

    .line 2
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doBlendAnimation(ZZZ)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->clearBlurAndBlend()V

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public final doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V
    .locals 8

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 12
    invoke-virtual {v1, p3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 15
    move-result-object p3

    .line 18
    new-instance v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;

    .line 19
    move-object v1, v7

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    move v5, p6

    .line 25
    move v6, p5

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;ZZ)V

    .line 27
    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p3, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 34
    move-result-object p0

    .line 37
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 38
    move-result-object p0

    .line 41
    invoke-interface {v0, p4, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 42
    return-void
    .line 45
.end method

.method public final doColorAnimation(ZZ)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColorAodStates:[Lmiuix/animation/controller/AnimState;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColorNoticeStates:[Lmiuix/animation/controller/AnimState;

    .line 9
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColorLockStates:[Lmiuix/animation/controller/AnimState;

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "doColorAnimation  mColorAodStates= "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColorAodStates:[Lmiuix/animation/controller/AnimState;

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " ,mColorNoticeStates= "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColorNoticeStates:[Lmiuix/animation/controller/AnimState;

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, " ,mColorLockStates= "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColorLockStates:[Lmiuix/animation/controller/AnimState;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, " ,toState= "

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    const-string v2, "ClockBaseAnimation"

    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsCopperplate:Z

    .line 63
    const/4 v2, 0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    if-nez v1, :cond_3

    .line 67
    if-eqz p2, :cond_2

    .line 69
    if-nez p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 73
    check-cast p1, Lcom/miui/clock/rhombus/MiuiRhombusClock;

    .line 75
    invoke-virtual {p1, v2}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->setUserDefineColor(Z)V

    .line 77
    goto :goto_1

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 81
    check-cast p1, Lcom/miui/clock/rhombus/MiuiRhombusClock;

    .line 83
    invoke-virtual {p1, v3}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->setUserDefineColor(Z)V

    .line 85
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/RhombusColorParams;

    .line 88
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 94
    move-result-object p1

    .line 97
    aget-object p2, v0, v3

    .line 98
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 100
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 102
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mElegantEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 105
    invoke-virtual {v1, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 107
    move-result-object v1

    .line 110
    new-instance v5, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;

    .line 111
    invoke-direct {v5, p0, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;-><init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;I)V

    .line 113
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 116
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 120
    move-result-object v1

    .line 123
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 124
    move-result-object v1

    .line 127
    invoke-interface {p1, p2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 128
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/RhombusColorParams;

    .line 131
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 136
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 137
    move-result-object p1

    .line 140
    aget-object p2, v0, v2

    .line 141
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 143
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 145
    invoke-virtual {v1, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 148
    move-result-object v1

    .line 151
    new-instance v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;

    .line 152
    const/4 v5, 0x2

    .line 154
    invoke-direct {v3, p0, v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;-><init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;I)V

    .line 155
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 158
    move-result-object v3

    .line 161
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 162
    move-result-object v1

    .line 165
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 166
    move-result-object v1

    .line 169
    invoke-interface {p1, p2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 170
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonColorParams:Lcom/android/keyguard/clock/animation/utils/RhombusColorParams;

    .line 173
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 175
    move-result-object p1

    .line 178
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 179
    move-result-object p1

    .line 182
    aget-object p2, v0, v5

    .line 183
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 185
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 187
    invoke-virtual {v0, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 190
    move-result-object v0

    .line 193
    new-instance v1, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;

    .line 194
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;-><init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;I)V

    .line 196
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 199
    move-result-object p0

    .line 202
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 203
    move-result-object p0

    .line 206
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 207
    move-result-object p0

    .line 210
    invoke-interface {p1, p2, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 211
    return-void
    .line 214
.end method

.method public final doSvgAnimation(Z)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isCupAndGupHighLevel()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 15
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doBlendAnimation(ZZZ)V

    .line 17
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    move v2, v0

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDrawableParams:[Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 23
    array-length v4, v3

    .line 25
    iget-object v12, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 26
    iget-object v13, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgToKeyguardEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 28
    if-ge v2, v4, :cond_5

    .line 30
    if-eqz p1, :cond_3

    .line 32
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 34
    aget-object v6, v4, v2

    .line 36
    aget-object v7, v3, v2

    .line 38
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgEndState:Lmiuix/animation/controller/AnimState;

    .line 40
    const/4 v10, 0x1

    .line 42
    array-length v3, v3

    .line 43
    sub-int/2addr v3, v1

    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    move v11, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v11, v0

    .line 49
    :goto_1
    move-object v5, p0

    .line 50
    move-object v8, v12

    .line 51
    invoke-virtual/range {v5 .. v11}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 52
    goto :goto_3

    .line 55
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 56
    aget-object v6, v4, v2

    .line 58
    aget-object v7, v3, v2

    .line 60
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgStartState:Lmiuix/animation/controller/AnimState;

    .line 62
    const/4 v10, 0x0

    .line 64
    array-length v3, v3

    .line 65
    sub-int/2addr v3, v1

    .line 66
    if-ne v2, v3, :cond_4

    .line 67
    move v11, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v11, v0

    .line 71
    :goto_2
    move-object v5, p0

    .line 72
    move-object v8, v13

    .line 73
    invoke-virtual/range {v5 .. v11}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 74
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_5
    if-eqz p1, :cond_6

    .line 80
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 82
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon1DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 84
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgEndState:Lmiuix/animation/controller/AnimState;

    .line 86
    const/4 v10, 0x1

    .line 88
    const/4 v11, 0x0

    .line 89
    move-object v5, p0

    .line 90
    move-object v8, v12

    .line 91
    invoke-virtual/range {v5 .. v11}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 92
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 95
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon2DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 97
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgEndState:Lmiuix/animation/controller/AnimState;

    .line 99
    invoke-virtual/range {v5 .. v11}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 101
    goto :goto_4

    .line 104
    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 105
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon1DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 107
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgStartState:Lmiuix/animation/controller/AnimState;

    .line 109
    const/4 v10, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    move-object v5, p0

    .line 113
    move-object v8, v13

    .line 114
    invoke-virtual/range {v5 .. v11}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 115
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 118
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon2DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 120
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgStartState:Lmiuix/animation/controller/AnimState;

    .line 122
    invoke-virtual/range {v5 .. v11}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;ZZ)V

    .line 124
    :goto_4
    return-void
    .line 127
.end method

.method public final doViewAnimation(ZZ)V
    .locals 35

    .line 1
    move-object/from16 v9, p0

    .line 2
    const v10, 0x3ba3d70a    # 0.005f

    .line 4
    const/4 v0, 0x0

    .line 7
    const/high16 v11, 0x40400000    # 3.0f

    .line 8
    iget-object v12, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mToAodDelay:[F

    .line 10
    const v13, 0x3f19999a    # 0.6f

    .line 12
    iget-object v14, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViewParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 15
    const/4 v15, 0x2

    .line 17
    const/4 v8, -0x2

    .line 18
    const-wide v16, 0x40c3880000000000L    # 10000.0

    .line 19
    iget-object v7, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->skParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 24
    const/4 v6, 0x0

    .line 26
    const/16 v18, 0x1

    .line 27
    if-eqz p1, :cond_2

    .line 29
    move v5, v6

    .line 31
    :goto_0
    iget-object v1, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 32
    array-length v1, v1

    .line 34
    if-ge v5, v1, :cond_8

    .line 35
    add-float v19, v0, v10

    .line 37
    aget-object v0, v7, v5

    .line 39
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 41
    move-result-wide v1

    .line 44
    mul-double v1, v1, v16

    .line 45
    double-to-float v1, v1

    .line 47
    iput v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 48
    aget-object v0, v7, v5

    .line 50
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 52
    move-result-wide v1

    .line 55
    mul-double v1, v1, v16

    .line 56
    double-to-float v1, v1

    .line 58
    iput v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 59
    aget-object v0, v7, v5

    .line 61
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 63
    move-result-wide v1

    .line 66
    mul-double v1, v1, v16

    .line 67
    double-to-float v1, v1

    .line 69
    iput v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 70
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 72
    aget-object v20, v0, v5

    .line 74
    aget-object v21, v14, v5

    .line 76
    aget-object v22, v7, v5

    .line 78
    new-instance v4, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 80
    new-array v0, v15, [F

    .line 82
    aput v13, v0, v6

    .line 84
    aget v1, v12, v5

    .line 86
    div-float/2addr v1, v11

    .line 88
    const v2, 0x3ecccccd    # 0.4f

    .line 89
    add-float/2addr v1, v2

    .line 92
    aput v1, v0, v18

    .line 93
    invoke-direct {v4, v8, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 95
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAodStates:[Lmiuix/animation/controller/AnimState;

    .line 98
    aget-object v3, v0, v5

    .line 100
    if-nez v5, :cond_0

    .line 102
    move/from16 v23, v18

    .line 104
    goto :goto_1

    .line 106
    :cond_0
    move/from16 v23, v6

    .line 107
    :goto_1
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 109
    array-length v0, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    .line 112
    if-ne v5, v0, :cond_1

    .line 114
    move/from16 v24, v18

    .line 116
    goto :goto_2

    .line 118
    :cond_1
    move/from16 v24, v6

    .line 119
    :goto_2
    filled-new-array/range {v22 .. v22}, [Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 124
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 125
    move-result-object v2

    .line 128
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 129
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 131
    new-array v1, v15, [F

    .line 134
    fill-array-data v1, :array_0

    .line 136
    invoke-virtual {v0, v8, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 139
    move-result-object v1

    .line 142
    new-instance v25, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;

    .line 143
    const/16 v26, 0x0

    .line 145
    const/16 v27, 0x0

    .line 147
    move-object/from16 v0, v25

    .line 149
    move-object v8, v1

    .line 151
    move/from16 v1, v19

    .line 152
    move-object v13, v2

    .line 154
    move/from16 v2, v27

    .line 155
    move-object v11, v3

    .line 157
    move-object/from16 v3, v20

    .line 158
    move-object v15, v4

    .line 160
    move-object/from16 v4, v21

    .line 161
    move/from16 v31, v5

    .line 163
    move-object/from16 v5, v22

    .line 165
    move-object/from16 v6, p0

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;-><init>(FILandroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 169
    filled-new-array/range {v25 .. v25}, [Lmiuix/animation/listener/TransitionListener;

    .line 172
    move-result-object v0

    .line 175
    invoke-virtual {v8, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 176
    move-result-object v0

    .line 179
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 180
    move-result-object v0

    .line 183
    iget-object v1, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkAodState:Lmiuix/animation/controller/AnimState;

    .line 184
    invoke-interface {v13, v1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 186
    new-instance v8, Landroid/os/Handler;

    .line 189
    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 191
    new-instance v13, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;

    .line 194
    move-object v0, v13

    .line 196
    move/from16 v1, v19

    .line 197
    move/from16 v2, v26

    .line 199
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;-><init>(FILandroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 201
    const-wide/16 v0, 0x1f4

    .line 204
    invoke-virtual {v8, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 212
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 213
    move-result-object v8

    .line 216
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 217
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 219
    invoke-virtual {v0, v15}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 222
    move-result-object v13

    .line 225
    new-instance v15, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;

    .line 226
    const/16 v21, 0x0

    .line 228
    move-object v0, v15

    .line 230
    move-object/from16 v1, p0

    .line 231
    move/from16 v2, v23

    .line 233
    move-object/from16 v3, v22

    .line 235
    move/from16 v4, v24

    .line 237
    move-object/from16 v5, v20

    .line 239
    move/from16 v6, v19

    .line 241
    move-object/from16 v20, v7

    .line 243
    move/from16 v7, v21

    .line 245
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;-><init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;ZLcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;ZLandroid/view/View;FI)V

    .line 247
    filled-new-array {v15}, [Lmiuix/animation/listener/TransitionListener;

    .line 250
    move-result-object v0

    .line 253
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 254
    move-result-object v0

    .line 257
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 258
    move-result-object v0

    .line 261
    invoke-interface {v8, v11, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 262
    add-int/lit8 v5, v31, 0x1

    .line 265
    move/from16 v0, v19

    .line 267
    move-object/from16 v7, v20

    .line 269
    const/4 v6, 0x0

    .line 271
    const/4 v8, -0x2

    .line 272
    const/high16 v11, 0x40400000    # 3.0f

    .line 273
    const v13, 0x3f19999a    # 0.6f

    .line 275
    const/4 v15, 0x2

    .line 278
    goto/16 :goto_0

    .line 279
    :cond_2
    move-object/from16 v20, v7

    .line 281
    const/4 v11, 0x0

    .line 283
    :goto_3
    iget-object v1, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 284
    array-length v1, v1

    .line 286
    if-ge v11, v1, :cond_8

    .line 287
    add-float v13, v0, v10

    .line 289
    aget-object v0, v20, v11

    .line 291
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 293
    move-result-wide v1

    .line 296
    mul-double v1, v1, v16

    .line 297
    double-to-float v1, v1

    .line 299
    iput v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 300
    aget-object v0, v20, v11

    .line 302
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 304
    move-result-wide v1

    .line 307
    mul-double v1, v1, v16

    .line 308
    double-to-float v1, v1

    .line 310
    iput v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 311
    aget-object v0, v20, v11

    .line 313
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 315
    move-result-wide v1

    .line 318
    mul-double v1, v1, v16

    .line 319
    double-to-float v1, v1

    .line 321
    iput v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 322
    if-eqz p2, :cond_5

    .line 324
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 326
    aget-object v1, v0, v11

    .line 328
    aget-object v2, v14, v11

    .line 330
    iget-object v3, v9, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mNoticeEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 332
    iget-object v4, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeStates:[Lmiuix/animation/controller/AnimState;

    .line 334
    aget-object v4, v4, v11

    .line 336
    mul-int/lit8 v5, v11, 0x8

    .line 338
    int-to-long v5, v5

    .line 340
    if-nez v11, :cond_3

    .line 341
    move/from16 v7, v18

    .line 343
    goto :goto_4

    .line 345
    :cond_3
    const/4 v7, 0x0

    .line 346
    :goto_4
    array-length v0, v0

    .line 347
    add-int/lit8 v0, v0, -0x1

    .line 348
    if-ne v11, v0, :cond_4

    .line 350
    move/from16 v8, v18

    .line 352
    goto :goto_5

    .line 354
    :cond_4
    const/4 v8, 0x0

    .line 355
    :goto_5
    move-object/from16 v0, p0

    .line 356
    const/4 v15, -0x2

    .line 358
    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumNotificationAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;JZZ)V

    .line 359
    move/from16 v27, v11

    .line 362
    move-object/from16 v30, v12

    .line 364
    const/4 v12, 0x0

    .line 366
    const/high16 v22, 0x40400000    # 3.0f

    .line 367
    const v23, 0x3f19999a    # 0.6f

    .line 369
    const/16 v31, 0x2

    .line 372
    goto/16 :goto_8

    .line 374
    :cond_5
    const/4 v15, -0x2

    .line 376
    aget v0, v12, v11

    .line 377
    const/high16 v1, 0x41000000    # 8.0f

    .line 379
    div-float/2addr v0, v1

    .line 381
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 382
    mul-float v7, v0, v1

    .line 384
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 386
    aget-object v8, v0, v11

    .line 388
    aget-object v19, v14, v11

    .line 390
    aget-object v21, v20, v11

    .line 392
    new-instance v6, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 394
    const/4 v0, 0x2

    .line 396
    new-array v1, v0, [F

    .line 397
    const v2, 0x3f4ccccd    # 0.8f

    .line 399
    const/4 v5, 0x0

    .line 402
    aput v2, v1, v5

    .line 403
    aget v3, v12, v11

    .line 405
    const/high16 v22, 0x40400000    # 3.0f

    .line 407
    div-float v3, v3, v22

    .line 409
    add-float/2addr v3, v2

    .line 411
    aput v3, v1, v18

    .line 412
    invoke-direct {v6, v15, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 414
    new-instance v4, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 417
    new-array v1, v0, [F

    .line 419
    const v23, 0x3f19999a    # 0.6f

    .line 421
    aput v23, v1, v5

    .line 424
    aget v0, v12, v11

    .line 426
    div-float v0, v0, v22

    .line 428
    add-float v0, v0, v23

    .line 430
    aput v0, v1, v18

    .line 432
    invoke-direct {v4, v15, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 434
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mLockStates:[Lmiuix/animation/controller/AnimState;

    .line 437
    aget-object v3, v0, v11

    .line 439
    if-nez v11, :cond_6

    .line 441
    move/from16 v24, v18

    .line 443
    goto :goto_6

    .line 445
    :cond_6
    move/from16 v24, v5

    .line 446
    :goto_6
    iget-object v0, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViews:[Landroid/view/View;

    .line 448
    array-length v0, v0

    .line 450
    add-int/lit8 v0, v0, -0x1

    .line 451
    if-ne v11, v0, :cond_7

    .line 453
    move/from16 v25, v18

    .line 455
    goto :goto_7

    .line 457
    :cond_7
    move/from16 v25, v5

    .line 458
    :goto_7
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    .line 460
    move-result-object v0

    .line 463
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 464
    move-result-object v2

    .line 467
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 468
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 470
    const/4 v1, 0x2

    .line 473
    new-array v5, v1, [F

    .line 474
    fill-array-data v5, :array_1

    .line 476
    invoke-virtual {v0, v15, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 479
    move-result-object v0

    .line 482
    move/from16 v27, v11

    .line 483
    float-to-long v10, v7

    .line 485
    invoke-virtual {v0, v10, v11}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 486
    move-result-object v5

    .line 489
    new-instance v28, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;

    .line 490
    const/16 v29, 0x1

    .line 492
    const/16 v30, 0x1

    .line 494
    move-object/from16 v0, v28

    .line 496
    move/from16 v31, v1

    .line 498
    move v1, v13

    .line 500
    move-object v15, v2

    .line 501
    move/from16 v2, v30

    .line 502
    move-object/from16 v32, v3

    .line 504
    move-object v3, v8

    .line 506
    move-object/from16 v33, v4

    .line 507
    move-object/from16 v4, v19

    .line 509
    move-object/from16 v34, v5

    .line 511
    move-object/from16 v5, v21

    .line 513
    move-object/from16 v30, v12

    .line 515
    move-object v12, v6

    .line 517
    move-object/from16 v6, p0

    .line 518
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;-><init>(FILandroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 520
    filled-new-array/range {v28 .. v28}, [Lmiuix/animation/listener/TransitionListener;

    .line 523
    move-result-object v0

    .line 526
    move-object/from16 v1, v34

    .line 527
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 529
    move-result-object v0

    .line 532
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 533
    move-result-object v0

    .line 536
    iget-object v1, v9, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkLockState:Lmiuix/animation/controller/AnimState;

    .line 537
    invoke-interface {v15, v1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 539
    new-instance v15, Landroid/os/Handler;

    .line 542
    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    .line 544
    new-instance v6, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;

    .line 547
    move-object v0, v6

    .line 549
    move v1, v13

    .line 550
    move/from16 v2, v29

    .line 551
    move-object v9, v6

    .line 553
    move-object/from16 v6, p0

    .line 554
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;-><init>(FILandroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 556
    const/high16 v0, 0x43960000    # 300.0f

    .line 559
    add-float/2addr v7, v0

    .line 561
    float-to-long v0, v7

    .line 562
    invoke-virtual {v15, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 566
    move-result-object v0

    .line 569
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 570
    move-result-object v9

    .line 573
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 574
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 576
    invoke-virtual {v0, v12}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 579
    move-result-object v0

    .line 582
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 583
    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 585
    const v2, 0x451c4000    # 2500.0f

    .line 588
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 591
    move-result-object v1

    .line 594
    check-cast v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 595
    const-string/jumbo v2, "viewTranslationY"

    .line 597
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 600
    move-result-object v0

    .line 603
    const/4 v12, 0x0

    .line 604
    new-array v1, v12, [F

    .line 605
    const-string/jumbo v2, "viewScaleX"

    .line 607
    move-object/from16 v3, v33

    .line 610
    invoke-virtual {v0, v2, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 612
    move-result-object v0

    .line 615
    const-string/jumbo v1, "viewScaleY"

    .line 616
    new-array v2, v12, [F

    .line 619
    invoke-virtual {v0, v1, v3, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 621
    move-result-object v0

    .line 624
    invoke-virtual {v0, v10, v11}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 625
    move-result-object v10

    .line 628
    new-instance v11, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;

    .line 629
    const/4 v7, 0x1

    .line 631
    move-object v0, v11

    .line 632
    move-object/from16 v1, p0

    .line 633
    move/from16 v2, v24

    .line 635
    move-object/from16 v3, v21

    .line 637
    move/from16 v4, v25

    .line 639
    move-object v5, v8

    .line 641
    move v6, v13

    .line 642
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;-><init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;ZLcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;ZLandroid/view/View;FI)V

    .line 643
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 646
    move-result-object v0

    .line 649
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 650
    move-result-object v0

    .line 653
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 654
    move-result-object v0

    .line 657
    move-object/from16 v1, v32

    .line 658
    invoke-interface {v9, v1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 660
    :goto_8
    add-int/lit8 v11, v27, 0x1

    .line 663
    const v10, 0x3ba3d70a    # 0.005f

    .line 665
    move-object/from16 v9, p0

    .line 668
    move v0, v13

    .line 670
    move-object/from16 v12, v30

    .line 671
    goto/16 :goto_3

    .line 673
    :cond_8
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isCupAndGupHighLevel()Z

    .line 675
    move-result v0

    .line 678
    if-nez v0, :cond_9

    .line 679
    invoke-virtual/range {p0 .. p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doColorAnimation(ZZ)V

    .line 681
    :cond_9
    return-void

    .line 684
    nop

    .line 685
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 686
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
    .line 694
.end method

.method public final initDrawable()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initDrawable()V

    .line 2
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isCupAndGupHighLevel()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 14
    array-length v3, v2

    .line 16
    if-ge v1, v3, :cond_2

    .line 17
    aget-object v2, v2, v1

    .line 19
    check-cast v2, Lcom/miui/clock/MiuiClockNumberView;

    .line 21
    invoke-virtual {v2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v2

    .line 26
    instance-of v2, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 27
    if-nez v2, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 32
    aget-object v2, v2, v1

    .line 34
    check-cast v2, Lcom/miui/clock/MiuiClockNumberView;

    .line 36
    invoke-virtual {v2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object v2

    .line 41
    move-object v3, v2

    .line 42
    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v4, " initDrawable view: "

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 58
    aget-object v4, v4, v1

    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v4, " drawable: "

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v4, " mClockNumTextColor = "

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumTextColor:[I

    .line 78
    aget v5, v4, v1

    .line 80
    const-string v6, "ClockBaseAnimation"

    .line 82
    invoke-static {v2, v5, v6}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDrawableParams:[Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 87
    aget-object v2, v2, v1

    .line 89
    aget v10, v4, v1

    .line 91
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAodClockNumTextColor:[I

    .line 93
    aget v11, v4, v1

    .line 95
    const-string v5, "_R_G_L_0_G_D_1_P_0"

    .line 97
    const-wide/16 v6, 0x1a1

    .line 99
    const-wide/16 v8, 0x53

    .line 101
    move-object v4, v2

    .line 103
    invoke-static/range {v3 .. v11}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->addStrokeColor(Landroid/graphics/drawable/AnimatedVectorDrawable;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Ljava/lang/String;JJII)V

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object v1

    .line 115
    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 116
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAodColonTextColor:[I

    .line 118
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonTextColor:[I

    .line 120
    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 126
    move-result-object v1

    .line 129
    move-object v4, v1

    .line 130
    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 131
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 133
    move-result-object v1

    .line 136
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon1DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 137
    if-eqz v1, :cond_3

    .line 139
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 141
    move-result-object v1

    .line 144
    invoke-virtual {v5}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->clearDrawableParams()V

    .line 145
    invoke-virtual {v5, v4}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->setDrawable(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    .line 148
    aget v6, v3, v0

    .line 151
    invoke-static {v1, v5, v6}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->analyzeAnimator(Landroid/animation/Animator;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;I)V

    .line 153
    :cond_3
    aget v11, v3, v0

    .line 156
    aget v12, v2, v0

    .line 158
    const-string v6, "_R_G_L_0_G_D_1_P_0"

    .line 160
    const-wide/16 v7, 0x1a1

    .line 162
    const-wide/16 v9, 0x53

    .line 164
    invoke-static/range {v4 .. v12}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->addStrokeColor(Landroid/graphics/drawable/AnimatedVectorDrawable;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Ljava/lang/String;JJII)V

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 171
    move-result-object v0

    .line 174
    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 175
    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 181
    move-result-object v0

    .line 184
    move-object v4, v0

    .line 185
    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 186
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 188
    move-result-object v0

    .line 191
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mColon2DrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 192
    const/4 p0, 0x1

    .line 194
    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 197
    move-result-object v0

    .line 200
    invoke-virtual {v5}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->clearDrawableParams()V

    .line 201
    invoke-virtual {v5, v4}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->setDrawable(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    .line 204
    aget v1, v3, p0

    .line 207
    invoke-static {v0, v5, v1}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->analyzeAnimator(Landroid/animation/Animator;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;I)V

    .line 209
    :cond_5
    aget v11, v3, p0

    .line 212
    aget v12, v2, p0

    .line 214
    const-string v6, "_R_G_L_0_G_D_1_P_0"

    .line 216
    const-wide/16 v7, 0x1a1

    .line 218
    const-wide/16 v9, 0x53

    .line 220
    invoke-static/range {v4 .. v12}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->addStrokeColor(Landroid/graphics/drawable/AnimatedVectorDrawable;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Ljava/lang/String;JJII)V

    .line 222
    :cond_6
    return-void
    .line 225
.end method

.method public final initParams(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInitParams:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initParams(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->updateSvgResource()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initView()V

    .line 2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->skParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 6
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    aget-object v1, v1, v0

    .line 11
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 17
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkInitState:Lmiuix/animation/controller/AnimState;

    .line 21
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public final resetColorForTimeChanged()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->initDrawable()V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorLockState()V

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorAodState()V

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorNoticeState()V

    .line 16
    const/4 v0, 0x0

    .line 19
    iget-boolean v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->doColorAnimation(ZZ)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method

.method public final updateAodState()V
    .locals 6

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
    const-wide/16 v3, 0x0

    .line 41
    invoke-virtual {v2, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 43
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2AodState:Lmiuix/animation/controller/AnimState;

    .line 46
    invoke-virtual {v2, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 48
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 51
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 53
    move-result v2

    .line 56
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1AodState:Lmiuix/animation/controller/AnimState;

    .line 57
    float-to-double v4, v2

    .line 59
    invoke-virtual {v3, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 60
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 63
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 65
    move-result v1

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2AodState:Lmiuix/animation/controller/AnimState;

    .line 69
    float-to-double v1, v1

    .line 71
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 72
    :cond_0
    return-void
    .line 75
.end method

.method public final updateColorInfo(ZZ)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorInfo(ZZ)V

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsAutoPrimaryColor:Z

    .line 5
    if-nez p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsAutoSecondaryColor:Z

    .line 9
    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorLockState()V

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorAodState()V

    .line 16
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateColorNoticeState()V

    .line 19
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 22
    iget-boolean p2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 24
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    if-eqz p1, :cond_0

    .line 33
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 36
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 38
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object p1

    .line 43
    instance-of p1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 44
    if-eqz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 48
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 50
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 58
    check-cast v1, Lcom/miui/clock/MiuiClockNumberView;

    .line 60
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v1

    .line 65
    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 66
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 68
    check-cast v2, Lcom/miui/clock/MiuiClockNumberView;

    .line 70
    invoke-virtual {v2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 72
    move-result-object v2

    .line 75
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 76
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 78
    check-cast v3, Lcom/miui/clock/MiuiClockNumberView;

    .line 80
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object v3

    .line 85
    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 86
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 88
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v4, v5}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->getHourAndMinuteColor(Landroid/content/Context;)[I

    .line 92
    move-result-object v4

    .line 95
    const/4 v5, 0x0

    .line 96
    aget v6, v4, v5

    .line 97
    const-string v7, "_R_G_L_0_G_D_0_P_0"

    .line 99
    invoke-virtual {p1, v7, v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 101
    aget p1, v4, v5

    .line 104
    invoke-virtual {v1, v7, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 106
    if-eqz p2, :cond_1

    .line 109
    aget p1, v4, v5

    .line 111
    invoke-virtual {v2, v7, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 113
    aget p1, v4, v5

    .line 116
    invoke-virtual {v3, v7, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 118
    goto :goto_0

    .line 121
    :cond_1
    aget p1, v4, v0

    .line 122
    invoke-virtual {v2, v7, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 124
    aget p1, v4, v0

    .line 127
    invoke-virtual {v3, v7, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 134
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 139
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 144
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 149
    :cond_2
    :goto_1
    return-void
    .line 152
.end method

.method public final updateLockState()V
    .locals 15

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->HOUR1:Lcom/miui/clock/module/ClockViewType;

    .line 5
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    invoke-virtual {v3, v2, v1}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 9
    invoke-virtual {v3, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 12
    move-result v1

    .line 15
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 16
    const-string v4, "hour1LockState"

    .line 18
    invoke-direct {v2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 20
    float-to-double v4, v1

    .line 23
    const-string v1, "angel"

    .line 24
    invoke-virtual {v2, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 26
    move-result-object v2

    .line 29
    const-string/jumbo v4, "viewScaleX"

    .line 30
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 33
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 35
    move-result-object v2

    .line 38
    const-string/jumbo v7, "viewScaleY"

    .line 39
    invoke-virtual {v2, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 42
    move-result-object v2

    .line 45
    const-string/jumbo v8, "viewTranslationX"

    .line 46
    const-wide/16 v9, 0x0

    .line 49
    invoke-virtual {v2, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object v2

    .line 54
    const-string/jumbo v11, "viewTranslationY"

    .line 55
    invoke-virtual {v2, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 58
    move-result-object v2

    .line 61
    const-string/jumbo v12, "viewAlpha"

    .line 62
    invoke-virtual {v2, v12, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 65
    move-result-object v2

    .line 68
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1LockState:Lmiuix/animation/controller/AnimState;

    .line 69
    new-array v2, v0, [I

    .line 71
    sget-object v12, Lcom/miui/clock/module/ClockViewType;->HOUR2:Lcom/miui/clock/module/ClockViewType;

    .line 73
    invoke-virtual {v3, v12, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 75
    invoke-virtual {v3, v12}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 78
    move-result v2

    .line 81
    new-instance v12, Lmiuix/animation/controller/AnimState;

    .line 82
    const-string v13, "hour2LockState"

    .line 84
    invoke-direct {v12, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 86
    float-to-double v13, v2

    .line 89
    invoke-virtual {v12, v1, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 90
    move-result-object v2

    .line 93
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 94
    move-result-object v2

    .line 97
    invoke-virtual {v2, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 98
    move-result-object v2

    .line 101
    invoke-virtual {v2, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 102
    move-result-object v2

    .line 105
    invoke-virtual {v2, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 106
    move-result-object v2

    .line 109
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2LockState:Lmiuix/animation/controller/AnimState;

    .line 110
    new-array v2, v0, [I

    .line 112
    sget-object v12, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 114
    invoke-virtual {v3, v12, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 116
    invoke-virtual {v3, v12}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 119
    move-result v2

    .line 122
    new-instance v12, Lmiuix/animation/controller/AnimState;

    .line 123
    const-string v13, "min1LockState"

    .line 125
    invoke-direct {v12, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 127
    float-to-double v13, v2

    .line 130
    invoke-virtual {v12, v1, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 131
    move-result-object v2

    .line 134
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 135
    move-result-object v2

    .line 138
    invoke-virtual {v2, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 139
    move-result-object v2

    .line 142
    invoke-virtual {v2, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 143
    move-result-object v2

    .line 146
    invoke-virtual {v2, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 147
    move-result-object v2

    .line 150
    iput-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1LockState:Lmiuix/animation/controller/AnimState;

    .line 151
    new-array v0, v0, [I

    .line 153
    sget-object v2, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 155
    invoke-virtual {v3, v2, v0}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 157
    invoke-virtual {v3, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 160
    move-result v0

    .line 163
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 164
    const-string v3, "min2LockState"

    .line 166
    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 168
    float-to-double v12, v0

    .line 171
    invoke-virtual {v2, v1, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 172
    move-result-object v0

    .line 175
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 176
    move-result-object v0

    .line 179
    invoke-virtual {v0, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 180
    move-result-object v0

    .line 183
    invoke-virtual {v0, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 184
    move-result-object v0

    .line 187
    invoke-virtual {v0, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 188
    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2LockState:Lmiuix/animation/controller/AnimState;

    .line 192
    const-string v0, "colon1LockState"

    .line 194
    invoke-static {v0, v1, v9, v10}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 196
    move-result-object v0

    .line 199
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 200
    move-result-object v0

    .line 203
    invoke-virtual {v0, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v0, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 208
    move-result-object v0

    .line 211
    invoke-virtual {v0, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 212
    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1LockState:Lmiuix/animation/controller/AnimState;

    .line 216
    const-string v0, "colon2LockState"

    .line 218
    invoke-static {v0, v1, v9, v10}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 220
    move-result-object v0

    .line 223
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 224
    move-result-object v0

    .line 227
    invoke-virtual {v0, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 228
    move-result-object v0

    .line 231
    invoke-virtual {v0, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 232
    move-result-object v0

    .line 235
    invoke-virtual {v0, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 236
    move-result-object v4

    .line 239
    iput-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2LockState:Lmiuix/animation/controller/AnimState;

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1LockState:Lmiuix/animation/controller/AnimState;

    .line 242
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2LockState:Lmiuix/animation/controller/AnimState;

    .line 244
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1LockState:Lmiuix/animation/controller/AnimState;

    .line 246
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1LockState:Lmiuix/animation/controller/AnimState;

    .line 248
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2LockState:Lmiuix/animation/controller/AnimState;

    .line 250
    filled-new-array/range {v1 .. v6}, [Lmiuix/animation/controller/AnimState;

    .line 252
    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mLockStates:[Lmiuix/animation/controller/AnimState;

    .line 256
    return-void
    .line 258
.end method

.method public final updateNoticeState()V
    .locals 29

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
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 15
    check-cast v3, Lcom/miui/clock/MiuiClockNumberView;

    .line 17
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 19
    check-cast v4, Lcom/miui/clock/MiuiClockNumberView;

    .line 21
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 23
    check-cast v5, Lcom/miui/clock/MiuiClockNumberView;

    .line 25
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 27
    check-cast v6, Lcom/miui/clock/MiuiClockNumberView;

    .line 29
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 31
    check-cast v7, Lcom/miui/clock/rhombus/MiuiRhombusBase;

    .line 33
    invoke-virtual {v7}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getStyle()Lcom/miui/clock/module/BaseFontStyle;

    .line 35
    move-result-object v7

    .line 38
    iget v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mNotificationHeight:F

    .line 39
    iget v9, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 41
    mul-float/2addr v8, v9

    .line 43
    float-to-int v8, v8

    .line 44
    int-to-float v8, v8

    .line 45
    invoke-virtual {v0, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealHeight(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 46
    move-result v9

    .line 49
    int-to-float v9, v9

    .line 50
    div-float v9, v8, v9

    .line 51
    invoke-virtual {v0, v4}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealHeight(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 53
    move-result v10

    .line 56
    int-to-float v10, v10

    .line 57
    div-float v10, v8, v10

    .line 58
    invoke-virtual {v0, v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealHeight(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 60
    move-result v11

    .line 63
    int-to-float v11, v11

    .line 64
    div-float v11, v8, v11

    .line 65
    invoke-virtual {v0, v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealHeight(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 67
    move-result v12

    .line 70
    int-to-float v12, v12

    .line 71
    div-float/2addr v8, v12

    .line 72
    sub-float v12, v2, v9

    .line 73
    const/high16 v13, 0x3f000000    # 0.5f

    .line 75
    mul-float/2addr v12, v13

    .line 77
    sub-float v14, v2, v10

    .line 78
    mul-float/2addr v14, v13

    .line 80
    sub-float v15, v2, v11

    .line 81
    mul-float/2addr v15, v13

    .line 83
    sub-float/2addr v2, v8

    .line 84
    mul-float/2addr v2, v13

    .line 85
    const v13, 0x3ea3d70a    # 0.32f

    .line 86
    iput v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 89
    invoke-virtual {v7}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerMarginOffset()I

    .line 91
    move-result v13

    .line 94
    int-to-float v13, v13

    .line 95
    move/from16 v16, v2

    .line 96
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 98
    mul-float/2addr v13, v2

    .line 100
    float-to-int v2, v13

    .line 101
    invoke-virtual {v7}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColonResourceWidth()I

    .line 102
    move-result v13

    .line 105
    int-to-float v13, v13

    .line 106
    move/from16 v17, v15

    .line 107
    iget v15, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 109
    mul-float/2addr v13, v15

    .line 111
    iget-object v15, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 112
    const/16 v18, 0x0

    .line 114
    aget v15, v15, v18

    .line 116
    int-to-float v15, v15

    .line 118
    move-object/from16 v19, v7

    .line 119
    invoke-virtual {v0, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 121
    move-result v7

    .line 124
    int-to-float v7, v7

    .line 125
    mul-float/2addr v7, v9

    .line 126
    mul-float/2addr v7, v1

    .line 127
    move/from16 v20, v14

    .line 128
    invoke-virtual {v0, v4}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 130
    move-result v14

    .line 133
    int-to-float v14, v14

    .line 134
    mul-float/2addr v14, v10

    .line 135
    add-float/2addr v14, v7

    .line 136
    iget v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 137
    mul-float/2addr v7, v13

    .line 139
    add-float/2addr v7, v14

    .line 140
    invoke-virtual {v0, v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 141
    move-result v13

    .line 144
    int-to-float v13, v13

    .line 145
    mul-float/2addr v13, v11

    .line 146
    add-float/2addr v13, v7

    .line 147
    invoke-virtual {v0, v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 148
    move-result v7

    .line 151
    int-to-float v7, v7

    .line 152
    mul-float/2addr v7, v8

    .line 153
    add-float/2addr v7, v13

    .line 154
    sub-float/2addr v15, v7

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 156
    move-result v7

    .line 159
    if-eqz v7, :cond_1

    .line 160
    mul-int/lit8 v7, v2, 0x4

    .line 162
    goto :goto_1

    .line 164
    :cond_1
    mul-int/lit8 v7, v2, 0x3

    .line 165
    :goto_1
    int-to-float v7, v7

    .line 167
    sub-float/2addr v15, v7

    .line 168
    const/high16 v7, 0x3f000000    # 0.5f

    .line 169
    mul-float/2addr v15, v7

    .line 171
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 172
    const/4 v13, 0x3

    .line 174
    aget v7, v7, v13

    .line 175
    int-to-float v7, v7

    .line 177
    mul-float/2addr v7, v12

    .line 178
    sub-float v7, v15, v7

    .line 179
    invoke-virtual {v0, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 181
    move-result v14

    .line 184
    int-to-float v14, v14

    .line 185
    mul-float/2addr v14, v9

    .line 186
    sub-float/2addr v7, v14

    .line 187
    iget-object v14, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 188
    aget v13, v14, v13

    .line 190
    neg-int v13, v13

    .line 192
    int-to-float v13, v13

    .line 193
    mul-float/2addr v13, v12

    .line 194
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 195
    move-result v12

    .line 198
    int-to-float v12, v12

    .line 199
    mul-float/2addr v12, v9

    .line 200
    sub-float/2addr v13, v12

    .line 201
    iget v12, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 202
    add-float/2addr v13, v12

    .line 204
    const/4 v12, 0x2

    .line 205
    new-array v12, v12, [I

    .line 206
    sget-object v14, Lcom/miui/clock/module/ClockViewType;->HOUR1:Lcom/miui/clock/module/ClockViewType;

    .line 208
    move/from16 v21, v8

    .line 210
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 212
    invoke-virtual {v8, v14, v12}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 214
    iget-object v14, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 217
    const/16 v22, 0x1

    .line 219
    aget v23, v14, v22

    .line 221
    const/16 v24, 0x3

    .line 223
    aget v14, v14, v24

    .line 225
    sub-int v14, v23, v14

    .line 227
    int-to-float v14, v14

    .line 229
    move-object/from16 v23, v6

    .line 230
    aget v6, v12, v18

    .line 232
    int-to-float v6, v6

    .line 234
    move/from16 v25, v11

    .line 235
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 237
    mul-float/2addr v6, v11

    .line 239
    sub-float/2addr v14, v6

    .line 240
    aget v6, v12, v22

    .line 241
    int-to-float v6, v6

    .line 243
    mul-float/2addr v6, v11

    .line 244
    const-string v11, "hour1NoticeState"

    .line 245
    const-string v12, "angel"

    .line 247
    move-object/from16 v26, v4

    .line 249
    move-object/from16 v27, v5

    .line 251
    const-wide/16 v4, 0x0

    .line 253
    invoke-static {v11, v12, v4, v5}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 255
    move-result-object v4

    .line 258
    sub-float/2addr v7, v14

    .line 259
    move-object v5, v12

    .line 260
    float-to-double v11, v7

    .line 261
    const-string/jumbo v7, "viewTranslationX"

    .line 262
    invoke-virtual {v4, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 265
    move-result-object v4

    .line 268
    sub-float/2addr v13, v6

    .line 269
    float-to-double v11, v13

    .line 270
    const-string/jumbo v6, "viewTranslationY"

    .line 271
    invoke-virtual {v4, v6, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 274
    move-result-object v4

    .line 277
    float-to-double v11, v9

    .line 278
    const-string/jumbo v13, "viewScaleX"

    .line 279
    invoke-virtual {v4, v13, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 282
    move-result-object v4

    .line 285
    const-string/jumbo v14, "viewScaleY"

    .line 286
    invoke-virtual {v4, v14, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 289
    move-result-object v4

    .line 292
    const-string/jumbo v11, "viewAlpha"

    .line 293
    move-object/from16 v28, v13

    .line 296
    float-to-double v12, v1

    .line 298
    invoke-virtual {v4, v11, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 299
    move-result-object v4

    .line 302
    iput-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 303
    invoke-virtual {v0, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 305
    move-result v4

    .line 308
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 309
    move-result v3

    .line 312
    add-int/2addr v3, v4

    .line 313
    int-to-float v3, v3

    .line 314
    invoke-static {v3, v9, v1, v15}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 315
    move-result v1

    .line 318
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 319
    const/4 v4, 0x4

    .line 321
    aget v3, v3, v4

    .line 322
    int-to-float v3, v3

    .line 324
    mul-float v3, v3, v20

    .line 325
    sub-float v3, v1, v3

    .line 327
    move-object/from16 v9, v26

    .line 329
    invoke-virtual {v0, v9}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 331
    move-result v11

    .line 334
    int-to-float v11, v11

    .line 335
    mul-float/2addr v11, v10

    .line 336
    sub-float/2addr v3, v11

    .line 337
    iget-object v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 338
    aget v4, v11, v4

    .line 340
    neg-int v4, v4

    .line 342
    int-to-float v4, v4

    .line 343
    mul-float v4, v4, v20

    .line 344
    invoke-virtual {v9}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 346
    move-result v11

    .line 349
    int-to-float v11, v11

    .line 350
    mul-float/2addr v11, v10

    .line 351
    sub-float/2addr v4, v11

    .line 352
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 353
    add-float/2addr v4, v11

    .line 355
    const/4 v11, 0x2

    .line 356
    new-array v11, v11, [I

    .line 357
    sget-object v12, Lcom/miui/clock/module/ClockViewType;->HOUR2:Lcom/miui/clock/module/ClockViewType;

    .line 359
    invoke-virtual {v8, v12, v11}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 361
    aget v12, v11, v18

    .line 364
    int-to-float v12, v12

    .line 366
    iget v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 367
    mul-float/2addr v12, v13

    .line 369
    aget v11, v11, v22

    .line 370
    int-to-float v11, v11

    .line 372
    mul-float/2addr v11, v13

    .line 373
    const-string v13, "hour2NoticeState"

    .line 374
    move/from16 v20, v1

    .line 376
    move v15, v2

    .line 378
    const-wide/16 v1, 0x0

    .line 379
    invoke-static {v13, v5, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 381
    move-result-object v1

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 385
    move-result v2

    .line 388
    if-eqz v2, :cond_2

    .line 389
    move/from16 v2, v18

    .line 391
    goto :goto_2

    .line 393
    :cond_2
    move v2, v15

    .line 394
    :goto_2
    int-to-float v2, v2

    .line 395
    add-float/2addr v3, v2

    .line 396
    sub-float/2addr v3, v12

    .line 397
    float-to-double v2, v3

    .line 398
    invoke-virtual {v1, v7, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 399
    move-result-object v1

    .line 402
    sub-float/2addr v4, v11

    .line 403
    float-to-double v2, v4

    .line 404
    invoke-virtual {v1, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 405
    move-result-object v1

    .line 408
    float-to-double v2, v10

    .line 409
    move-object/from16 v4, v28

    .line 410
    invoke-virtual {v1, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 412
    move-result-object v1

    .line 415
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 416
    move-result-object v1

    .line 419
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 420
    invoke-virtual {v0, v9}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 422
    move-result v1

    .line 425
    invoke-virtual {v9}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 426
    move-result v2

    .line 429
    add-int/2addr v2, v1

    .line 430
    int-to-float v1, v2

    .line 431
    mul-float/2addr v1, v10

    .line 432
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 433
    mul-float/2addr v1, v2

    .line 435
    add-float v1, v1, v20

    .line 436
    const v3, 0x3f99999a    # 1.2f

    .line 438
    cmpl-float v2, v2, v3

    .line 441
    if-nez v2, :cond_3

    .line 443
    const v2, 0x3ef0a3d7    # 0.47f

    .line 445
    goto :goto_3

    .line 448
    :cond_3
    const v2, 0x3eae147b    # 0.34f

    .line 449
    :goto_3
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 452
    const/4 v9, 0x7

    .line 454
    aget v3, v3, v9

    .line 455
    int-to-float v3, v3

    .line 457
    mul-float/2addr v3, v2

    .line 458
    sub-float v2, v1, v3

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getColonInterval()F

    .line 461
    move-result v3

    .line 464
    iget v10, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 465
    mul-float/2addr v3, v10

    .line 467
    invoke-virtual/range {v19 .. v19}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColon1MarginInnerTop()F

    .line 468
    move-result v10

    .line 471
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 472
    mul-float/2addr v10, v11

    .line 474
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 475
    mul-float/2addr v10, v11

    .line 477
    iget-object v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 478
    aget v11, v11, v9

    .line 480
    int-to-float v11, v11

    .line 482
    const/high16 v12, 0x3f000000    # 0.5f

    .line 483
    mul-float/2addr v11, v12

    .line 485
    iget v12, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonNoticeScale:F

    .line 486
    const/high16 v13, 0x3f800000    # 1.0f

    .line 488
    sub-float/2addr v13, v12

    .line 490
    mul-float/2addr v13, v11

    .line 491
    sub-float/2addr v10, v13

    .line 492
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 493
    add-float/2addr v10, v11

    .line 495
    invoke-virtual/range {v19 .. v19}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColon2MarginInnerTop()F

    .line 496
    move-result v11

    .line 499
    invoke-virtual/range {v19 .. v19}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColon1MarginInnerTop()F

    .line 500
    move-result v12

    .line 503
    sub-float/2addr v11, v12

    .line 504
    iget v12, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 505
    mul-float/2addr v11, v12

    .line 507
    add-float/2addr v11, v10

    .line 508
    iget-object v12, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 509
    aget v13, v12, v18

    .line 511
    aget v12, v12, v9

    .line 513
    sub-int/2addr v13, v12

    .line 515
    int-to-float v12, v13

    .line 516
    const/high16 v13, 0x3f000000    # 0.5f

    .line 517
    mul-float/2addr v12, v13

    .line 519
    iget-object v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 520
    aget v19, v13, v18

    .line 522
    aget v9, v13, v9

    .line 524
    mul-int/lit8 v9, v9, 0x2

    .line 526
    sub-int v9, v19, v9

    .line 528
    int-to-float v9, v9

    .line 530
    sub-float/2addr v9, v3

    .line 531
    const/high16 v13, 0x3f000000    # 0.5f

    .line 532
    mul-float/2addr v9, v13

    .line 534
    const-string v13, "colon1NoticeState"

    .line 535
    move/from16 v19, v3

    .line 537
    move-object/from16 v28, v4

    .line 539
    const-wide/16 v3, 0x0

    .line 541
    invoke-static {v13, v5, v3, v4}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 543
    move-result-object v3

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 547
    move-result v4

    .line 550
    if-eqz v4, :cond_4

    .line 551
    move v4, v15

    .line 553
    goto :goto_4

    .line 554
    :cond_4
    mul-int/lit8 v4, v15, 0x2

    .line 555
    :goto_4
    int-to-float v4, v4

    .line 557
    add-float/2addr v4, v2

    .line 558
    sub-float/2addr v4, v12

    .line 559
    move v13, v11

    .line 560
    move/from16 v20, v12

    .line 561
    float-to-double v11, v4

    .line 563
    invoke-virtual {v3, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 564
    move-result-object v3

    .line 567
    sub-float/2addr v10, v9

    .line 568
    float-to-double v10, v10

    .line 569
    invoke-virtual {v3, v6, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 570
    move-result-object v3

    .line 573
    iget v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonNoticeScale:F

    .line 574
    float-to-double v10, v4

    .line 576
    move-object/from16 v4, v28

    .line 577
    invoke-virtual {v3, v4, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 579
    move-result-object v3

    .line 582
    iget v10, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonNoticeScale:F

    .line 583
    float-to-double v10, v10

    .line 585
    invoke-virtual {v3, v14, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 586
    move-result-object v3

    .line 589
    iput-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 590
    const-string v3, "colon2NoticeState"

    .line 592
    const-wide/16 v10, 0x0

    .line 594
    invoke-static {v3, v5, v10, v11}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 596
    move-result-object v3

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 600
    move-result v10

    .line 603
    if-eqz v10, :cond_5

    .line 604
    move v10, v15

    .line 606
    goto :goto_5

    .line 607
    :cond_5
    mul-int/lit8 v10, v15, 0x2

    .line 608
    :goto_5
    int-to-float v10, v10

    .line 610
    add-float/2addr v2, v10

    .line 611
    sub-float v2, v2, v20

    .line 612
    float-to-double v10, v2

    .line 614
    invoke-virtual {v3, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 615
    move-result-object v2

    .line 618
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 619
    const/4 v10, 0x7

    .line 621
    aget v3, v3, v10

    .line 622
    int-to-float v3, v3

    .line 624
    add-float/2addr v9, v3

    .line 625
    add-float v9, v9, v19

    .line 626
    sub-float v11, v13, v9

    .line 628
    float-to-double v9, v11

    .line 630
    invoke-virtual {v2, v6, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 631
    move-result-object v2

    .line 634
    iget v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonNoticeScale:F

    .line 635
    float-to-double v9, v3

    .line 637
    invoke-virtual {v2, v4, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 638
    move-result-object v2

    .line 641
    iget v3, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonNoticeScale:F

    .line 642
    float-to-double v9, v3

    .line 644
    invoke-virtual {v2, v14, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 645
    move-result-object v2

    .line 648
    iput-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 649
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 651
    aget v3, v2, v18

    .line 653
    const/4 v9, 0x2

    .line 655
    aget v2, v2, v9

    .line 656
    sub-int/2addr v3, v2

    .line 658
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 659
    const/4 v9, 0x7

    .line 661
    aget v9, v2, v9

    .line 662
    int-to-float v9, v9

    .line 664
    iget v10, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 665
    mul-float/2addr v9, v10

    .line 667
    add-float/2addr v9, v1

    .line 668
    const/4 v1, 0x5

    .line 669
    aget v2, v2, v1

    .line 670
    int-to-float v2, v2

    .line 672
    mul-float v2, v2, v17

    .line 673
    sub-float v2, v9, v2

    .line 675
    move-object/from16 v10, v27

    .line 677
    invoke-virtual {v0, v10}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 679
    move-result v11

    .line 682
    int-to-float v11, v11

    .line 683
    mul-float v11, v11, v25

    .line 684
    sub-float/2addr v2, v11

    .line 686
    iget-object v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 687
    aget v1, v11, v1

    .line 689
    neg-int v1, v1

    .line 691
    int-to-float v1, v1

    .line 692
    mul-float v1, v1, v17

    .line 693
    int-to-float v3, v3

    .line 695
    sub-float/2addr v1, v3

    .line 696
    invoke-virtual {v10}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 697
    move-result v11

    .line 700
    int-to-float v11, v11

    .line 701
    mul-float v11, v11, v25

    .line 702
    sub-float/2addr v1, v11

    .line 704
    iget v11, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 705
    add-float/2addr v1, v11

    .line 707
    const/4 v11, 0x2

    .line 708
    new-array v12, v11, [I

    .line 709
    sget-object v13, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 711
    invoke-virtual {v8, v13, v12}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 713
    iget-object v13, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 716
    aget v11, v13, v11

    .line 718
    const/16 v17, 0x5

    .line 720
    aget v13, v13, v17

    .line 722
    sub-int/2addr v11, v13

    .line 724
    int-to-float v11, v11

    .line 725
    aget v13, v12, v18

    .line 726
    int-to-float v13, v13

    .line 728
    move-object/from16 v17, v8

    .line 729
    iget v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 731
    mul-float/2addr v13, v8

    .line 733
    sub-float/2addr v11, v13

    .line 734
    aget v12, v12, v22

    .line 735
    int-to-float v12, v12

    .line 737
    mul-float/2addr v12, v8

    .line 738
    const-string v8, "min1NoticeState"

    .line 739
    move v13, v9

    .line 741
    const-wide/16 v9, 0x0

    .line 742
    invoke-static {v8, v5, v9, v10}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 744
    move-result-object v8

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 748
    move-result v9

    .line 751
    if-eqz v9, :cond_6

    .line 752
    mul-int/lit8 v9, v15, 0x2

    .line 754
    goto :goto_6

    .line 756
    :cond_6
    mul-int/lit8 v9, v15, 0x3

    .line 757
    :goto_6
    int-to-float v9, v9

    .line 759
    add-float/2addr v2, v9

    .line 760
    sub-float/2addr v2, v11

    .line 761
    float-to-double v9, v2

    .line 762
    invoke-virtual {v8, v7, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 763
    move-result-object v2

    .line 766
    sub-float/2addr v1, v12

    .line 767
    float-to-double v8, v1

    .line 768
    invoke-virtual {v2, v6, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 769
    move-result-object v1

    .line 772
    move/from16 v8, v25

    .line 773
    float-to-double v9, v8

    .line 775
    invoke-virtual {v1, v4, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 776
    move-result-object v1

    .line 779
    invoke-virtual {v1, v14, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 780
    move-result-object v1

    .line 783
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 784
    move-object/from16 v1, v27

    .line 786
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getRealWidth(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 788
    move-result v2

    .line 791
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockNumberView;->getCenterOffsetX()I

    .line 792
    move-result v1

    .line 795
    add-int/2addr v1, v2

    .line 796
    int-to-float v1, v1

    .line 797
    mul-float/2addr v1, v8

    .line 798
    add-float/2addr v1, v13

    .line 799
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusWidth:[I

    .line 800
    const/4 v8, 0x6

    .line 802
    aget v2, v2, v8

    .line 803
    int-to-float v2, v2

    .line 805
    mul-float v2, v2, v16

    .line 806
    sub-float/2addr v1, v2

    .line 808
    move-object/from16 v2, v23

    .line 809
    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->getLeftPosition(Lcom/miui/clock/MiuiClockNumberView;)I

    .line 811
    move-result v9

    .line 814
    int-to-float v9, v9

    .line 815
    mul-float v9, v9, v21

    .line 816
    sub-float/2addr v1, v9

    .line 818
    iget-object v9, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mRhombusHeight:[I

    .line 819
    aget v8, v9, v8

    .line 821
    neg-int v8, v8

    .line 823
    int-to-float v8, v8

    .line 824
    mul-float v8, v8, v16

    .line 825
    sub-float/2addr v8, v3

    .line 827
    invoke-virtual {v2}, Lcom/miui/clock/MiuiClockNumberView;->getTopPosition()I

    .line 828
    move-result v2

    .line 831
    int-to-float v2, v2

    .line 832
    mul-float v2, v2, v21

    .line 833
    sub-float/2addr v8, v2

    .line 835
    iget v2, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationTransY:F

    .line 836
    add-float/2addr v8, v2

    .line 838
    const/4 v2, 0x2

    .line 839
    new-array v2, v2, [I

    .line 840
    sget-object v3, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 842
    move-object/from16 v9, v17

    .line 844
    invoke-virtual {v9, v3, v2}, Lcom/miui/clock/MiuiClockController;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 846
    aget v3, v2, v18

    .line 849
    int-to-float v3, v3

    .line 851
    iget v9, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mTimeViewScale:F

    .line 852
    mul-float/2addr v3, v9

    .line 854
    aget v2, v2, v22

    .line 855
    int-to-float v2, v2

    .line 857
    mul-float/2addr v2, v9

    .line 858
    const-string v9, "min2NoticeState"

    .line 859
    const-wide/16 v10, 0x0

    .line 861
    invoke-static {v9, v5, v10, v11}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 863
    move-result-object v5

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->needHideHour1()Z

    .line 867
    move-result v9

    .line 870
    if-eqz v9, :cond_7

    .line 871
    goto :goto_7

    .line 873
    :cond_7
    const/16 v24, 0x4

    .line 874
    :goto_7
    mul-int v9, v15, v24

    .line 876
    int-to-float v9, v9

    .line 878
    add-float/2addr v1, v9

    .line 879
    sub-float/2addr v1, v3

    .line 880
    float-to-double v9, v1

    .line 881
    invoke-virtual {v5, v7, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 882
    move-result-object v1

    .line 885
    sub-float/2addr v8, v2

    .line 886
    float-to-double v2, v8

    .line 887
    invoke-virtual {v1, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 888
    move-result-object v1

    .line 891
    move/from16 v8, v21

    .line 892
    float-to-double v2, v8

    .line 894
    invoke-virtual {v1, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 895
    move-result-object v1

    .line 898
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 899
    move-result-object v9

    .line 902
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 903
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 905
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 907
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2NoticeState:Lmiuix/animation/controller/AnimState;

    .line 909
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1NoticeState:Lmiuix/animation/controller/AnimState;

    .line 911
    filled-new-array/range {v4 .. v9}, [Lmiuix/animation/controller/AnimState;

    .line 913
    move-result-object v1

    .line 916
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeStates:[Lmiuix/animation/controller/AnimState;

    .line 917
    return-void
    .line 919
.end method

.method public final updateSvgResource()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isCupAndGupHighLevel()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInitParams:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 13
    check-cast v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;

    .line 15
    invoke-virtual {v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getStyle()Lcom/miui/clock/module/BaseFontStyle;

    .line 17
    move-result-object v0

    .line 20
    sget-object v1, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->SVG_B_RESOURCE:[I

    .line 21
    iput-object v1, v0, Lcom/miui/clock/module/BaseFontStyle;->mUserDefinedResources:[I

    .line 23
    sget v1, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->SVG_B_COLON:I

    .line 25
    iput v1, v0, Lcom/miui/clock/module/BaseFontStyle;->mUserDefinedColonResource:I

    .line 27
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateSvgResource()V

    .line 29
    :cond_1
    return-void
    .line 32
.end method
