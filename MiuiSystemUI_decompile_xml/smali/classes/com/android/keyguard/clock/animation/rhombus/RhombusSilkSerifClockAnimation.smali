.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;
.super Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mSvgDelayToAod:[F

.field public final mSvgDelayToLock:[F


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    const/4 p1, 0x4

    .line 5
    new-array v0, p1, [F

    .line 6
    fill-array-data v0, :array_0

    .line 8
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;->mSvgDelayToAod:[F

    .line 11
    new-array p1, p1, [F

    .line 13
    fill-array-data p1, :array_1

    .line 15
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;->mSvgDelayToLock:[F

    .line 18
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f666666    # 0.9f
        0x3f333333    # 0.7f
        0x3f19999a    # 0.6f
    .end array-data
.end method


# virtual methods
.method public final doSvgAnimation(Z)V
    .locals 10

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
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDrawableParams:[Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 11
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_2

    .line 14
    const/high16 v3, 0x40a00000    # 5.0f

    .line 16
    const/4 v4, 0x2

    .line 18
    const/4 v5, -0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 23
    aget-object v7, v7, v1

    .line 25
    aget-object v2, v2, v1

    .line 27
    new-instance v8, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    new-array v4, v4, [F

    .line 31
    const/high16 v9, 0x3f800000    # 1.0f

    .line 33
    aput v9, v4, v0

    .line 35
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;->mSvgDelayToAod:[F

    .line 37
    aget v9, v9, v1

    .line 39
    div-float/2addr v9, v3

    .line 41
    const v3, 0x3f19999a    # 0.6f

    .line 42
    add-float/2addr v9, v3

    .line 45
    aput v9, v4, v6

    .line 46
    invoke-direct {v8, v5, v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 48
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgEndState:Lmiuix/animation/controller/AnimState;

    .line 51
    invoke-virtual {p0, v7, v2, v8, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;)V

    .line 53
    goto :goto_1

    .line 56
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockNumViews:[Landroid/view/View;

    .line 57
    aget-object v7, v7, v1

    .line 59
    aget-object v2, v2, v1

    .line 61
    new-instance v8, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 63
    new-array v4, v4, [F

    .line 65
    const v9, 0x3f733333    # 0.95f

    .line 67
    aput v9, v4, v0

    .line 70
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;->mSvgDelayToLock:[F

    .line 72
    aget v9, v9, v1

    .line 74
    div-float/2addr v9, v3

    .line 76
    const v3, 0x3f4ccccd    # 0.8f

    .line 77
    add-float/2addr v9, v3

    .line 80
    aput v9, v4, v6

    .line 81
    invoke-direct {v8, v5, v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 83
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mSvgStartState:Lmiuix/animation/controller/AnimState;

    .line 86
    invoke-virtual {p0, v7, v2, v8, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doClockNumSvgAnimation(Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/controller/AnimState;)V

    .line 88
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    return-void
    .line 94
.end method

.method public final initView()V
    .locals 1

    .line 1
    const v0, 0x3ec7ae14    # 0.39f

    .line 2
    iput v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNoticeScale:F

    .line 5
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initView()V

    .line 7
    return-void
    .line 10
.end method
