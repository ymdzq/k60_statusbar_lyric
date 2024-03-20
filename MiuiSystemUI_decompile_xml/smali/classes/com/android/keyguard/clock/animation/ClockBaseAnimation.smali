.class public Lcom/android/keyguard/clock/animation/ClockBaseAnimation;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public aodPositionState:Lmiuix/animation/controller/AnimState;

.field public mAodPosition:Ljava/util/Map;

.field public mBackgroundBlurEnable:Z

.field public final mElegantEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mHasNotification:Z

.field public final mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mHideState:Lmiuix/animation/controller/AnimState;

.field public mHighTextEnable:Z

.field public mIsSuperSave:Z

.field public mMagazineAodPositionState:Lmiuix/animation/controller/AnimState;

.field public final mMiuiClockController:Lcom/miui/clock/MiuiClockController;

.field public final mNoticeEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mOriginalPrimaryColor:I

.field public mOriginalSecondColor:I

.field public final mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mShowState:Lmiuix/animation/controller/AnimState;

.field public final mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

.field public mToAod:Z

.field public final mWallpaperHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 5
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [F

    .line 8
    fill-array-data v2, :array_0

    .line 10
    const/4 v3, -0x2

    .line 13
    invoke-direct {v0, v3, v2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 19
    new-array v2, v1, [F

    .line 21
    fill-array-data v2, :array_1

    .line 23
    invoke-direct {v0, v3, v2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 26
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    new-array v2, v1, [F

    .line 31
    fill-array-data v2, :array_2

    .line 33
    invoke-direct {v0, v3, v2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 36
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 39
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 41
    new-array v2, v1, [F

    .line 43
    fill-array-data v2, :array_3

    .line 45
    invoke-direct {v0, v3, v2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 48
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mNoticeEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 51
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 53
    new-array v1, v1, [F

    .line 55
    fill-array-data v1, :array_4

    .line 57
    invoke-direct {v0, v3, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 60
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mElegantEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 63
    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 65
    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [F

    .line 68
    const/4 v2, 0x0

    .line 70
    const/high16 v3, 0x3f800000    # 1.0f

    .line 71
    aput v3, v1, v2

    .line 73
    const/16 v3, 0x14

    .line 75
    invoke-direct {v0, v3, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 77
    const-wide/16 v3, 0x12c

    .line 80
    invoke-virtual {v0, v3, v4}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 82
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mWallpaperHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 86
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 88
    const-string/jumbo v1, "show"

    .line 90
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 93
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 96
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 98
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 100
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 104
    const-string v0, "hide"

    .line 106
    const-wide/16 v3, 0x0

    .line 108
    invoke-static {v0, v1, v3, v4}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 110
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 114
    iput-boolean v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 116
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mBackgroundBlurEnable:Z

    .line 120
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 122
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 124
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 128
    return-void

    .line 130
    nop

    .line 131
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e3851ec    # 0.18f
    .end array-data

    .line 132
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e8f5c29    # 0.28f
    .end array-data

    .line 140
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data

    :array_3
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3edc28f6    # 0.43f
    .end array-data
.end method


# virtual methods
.method public doAnimationToAod(ZZ)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doAnimationToAod toAod: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", hasNotification: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClockBaseAnimation"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doAnimationToAod(ZZZ)V
    .locals 6

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doAnimationToAod  toAod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromKeyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockBaseAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const-string/jumbo v0, "wallpaperBlack"

    const-string v1, "WallpaperParam"

    if-eqz p1, :cond_0

    .line 6
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mWallpaperHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v4, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v5}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;-><init>(Landroid/view/SurfaceControl$Transaction;I)V

    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p3

    invoke-virtual {v3, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    filled-new-array {v0, v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 7
    :cond_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v4, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;

    const/4 v5, 0x1

    invoke-direct {v4, p3, v5}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;-><init>(Landroid/view/SurfaceControl$Transaction;I)V

    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p3

    invoke-virtual {v3, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    filled-new-array {v0, v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    return-void
.end method

.method public doAnimationToNotification(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    return-void
.end method

.method public doAnimationToNotification(ZZ)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToNotification(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getClockTranslationForAod()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public initView()V
    .locals 2

    .line 1
    const-string p0, "WallpaperParam"

    .line 2
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    move-result-object v0

    .line 16
    const-string/jumbo v1, "wallpaperBlack"

    .line 17
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 24
    return-void
    .line 27
.end method

.method public resetAnimationState(Z)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateTimeViewAlpha(F)V

    .line 4
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    .line 8
    return-void
    .line 11
.end method

.method public bridge synthetic resetColorForTimeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic resetColorOnSuperSaveChange(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic resetSvgPropertyForTimeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setBackgroundBlurEnableChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mBackgroundBlurEnable:Z

    .line 2
    return-void
    .line 4
.end method

.method public bridge synthetic setSmartFrameView(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setSmartFrameViewFillColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic updateColorInfo(ZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic updateFaceUnlockIconState()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic updateInfoAreaColor()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic updateMagazineView(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateTimeViewAlpha(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 2
    const-string v1, " updateTimeViewAlpha alpha: "

    .line 4
    const-string v2, "ClockBaseAnimation"

    .line 6
    if-eqz v0, :cond_1

    .line 8
    const-string/jumbo v3, "top"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    cmpl-float v0, p1, v0

    .line 21
    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 25
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v0

    .line 36
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 37
    iget-boolean v5, v4, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 39
    if-eqz v5, :cond_0

    .line 41
    iget-object v5, v4, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 43
    invoke-interface {v5}, Lcom/miui/clock/MiuiClockController$IClockView;->getTopMargin()F

    .line 45
    move-result v5

    .line 48
    float-to-int v5, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v5, 0x0

    .line 51
    :goto_0
    add-int/2addr v0, v5

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, " mAodPosition[top]: "

    .line 67
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 72
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " aodPosition: "

    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "    "

    .line 89
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, v4, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 94
    invoke-interface {v1}, Lcom/miui/clock/MiuiClockController$IClockView;->getTopMargin()F

    .line 96
    move-result v1

    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 106
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 110
    const-string v2, "aodPosition"

    .line 112
    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 114
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 117
    float-to-double v3, p1

    .line 119
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 120
    move-result-object p1

    .line 123
    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 124
    int-to-double v2, v0

    .line 126
    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 127
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 131
    goto :goto_1

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 151
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 155
    const-string v1, "alpha"

    .line 157
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 159
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 162
    float-to-double v2, p1

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 165
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 169
    :goto_1
    return-void
    .line 171
.end method

.method public bridge synthetic updateTimeViewByConfigChange(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final useBlur(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 6
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor()Z

    .line 8
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 13
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor()Z

    .line 15
    move-result p1

    .line 18
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mBackgroundBlurEnable:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-boolean p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHighTextEnable:Z

    .line 23
    if-nez p0, :cond_1

    .line 25
    if-eqz p1, :cond_1

    .line 27
    const/4 p0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_1
    return p0
    .line 32
.end method
