.class public final Lcom/android/keyguard/clock/KeyguardClockContainer$mMiuiKeyguardUpdateMonitorCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/KeyguardClockContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mLockScreenMagazineClockView:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 6
    invoke-virtual {p1}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->updateOwnerInfoTitleVisibility()V

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateClockMagazineInfo()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    const-string p5, "clock_style_rect"

    .line 2
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 10
    instance-of p5, p1, Ljava/util/Map;

    .line 12
    if-eqz p5, :cond_4

    .line 14
    xor-int/lit8 p4, p4, 0x1

    .line 16
    xor-int/lit8 p3, p3, 0x1

    .line 18
    :try_start_0
    check-cast p1, Ljava/util/Map;

    .line 20
    sget p5, Lcom/android/keyguard/clock/KeyguardClockContainer;->$r8$clinit:I

    .line 22
    iget-object p5, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 24
    if-eqz p5, :cond_3

    .line 26
    invoke-virtual {p5, p2, p4, p1}, Lcom/miui/clock/MiuiClockController;->setClockPalette(IZLjava/util/Map;)V

    .line 28
    iput-boolean p3, p5, Lcom/miui/clock/MiuiClockController;->mInfoTextDark:Z

    .line 31
    iget-object p6, p5, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 33
    if-eqz p6, :cond_0

    .line 35
    invoke-interface {p6, p3}, Lcom/miui/clock/MiuiClockController$IClockView;->setInfoTextColorDark(Z)V

    .line 37
    :cond_0
    iget-object p3, p5, Lcom/miui/clock/MiuiClockController;->mClockPaletteChangeListener:Lcom/miui/clock/MiuiClockController$ClockPaletteChangeListener;

    .line 40
    if-eqz p3, :cond_1

    .line 42
    check-cast p3, Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 44
    iget-object p3, p3, Lcom/android/keyguard/clock/animation/AnimationHelper$1;->this$0:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 46
    iget-object p3, p3, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 48
    invoke-virtual {p3}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateInfoAreaColor()V

    .line 50
    :cond_1
    iget-object p3, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mLockScreenMagazineClockView:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 53
    iget-object p5, p5, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 55
    if-eqz p5, :cond_2

    .line 57
    invoke-interface {p5}, Lcom/miui/clock/MiuiClockController$IClockView;->getMagazineColor()I

    .line 59
    move-result p5

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p5, 0x0

    .line 64
    :goto_0
    invoke-virtual {p3, p5}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->updateColor(I)V

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mSmallDateClockController:Lcom/miui/clock/MiuiClockController;

    .line 68
    if-eqz p0, :cond_4

    .line 70
    invoke-virtual {p0, p2, p4, p1}, Lcom/miui/clock/MiuiClockController;->setClockPalette(IZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :cond_4
    :goto_1
    return-void
    .line 80
.end method
