.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field mAnimateChange:Z

.field mAnimationDuration:J

.field mAodFrontScrimAlpha:F

.field mBehindAlpha:F

.field mBehindTint:I

.field mBlankScreen:Z

.field mClipQsScrim:Z

.field mDefaultScrimAlpha:F

.field mDisplayRequiresBlanking:Z

.field mDockManager:Lcom/android/systemui/dock/DockManager;

.field mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mFrontAlpha:F

.field mFrontTint:I

.field mHasBackdrop:Z

.field mKeyguardFadingAway:Z

.field mKeyguardFadingAwayDuration:J

.field mLaunchingAffordanceWithPreview:Z

.field mNotifAlpha:F

.field mNotifTint:I

.field mOccludeAnimationPlaying:Z

.field mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field mScrimBehindAlphaKeyguard:F

.field mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field mWakeLockScreenSensorActive:Z

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 2
    const-string v1, "UNINITIALIZED"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    .line 12
    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>()V

    .line 14
    sput-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 17
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    .line 19
    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>()V

    .line 21
    sput-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 24
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    .line 26
    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>()V

    .line 28
    sput-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 31
    new-instance v4, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    .line 33
    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>()V

    .line 35
    sput-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 38
    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    .line 40
    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>()V

    .line 42
    sput-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 45
    new-instance v6, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    .line 47
    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>()V

    .line 49
    sput-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 52
    new-instance v7, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    .line 54
    invoke-direct {v7}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>()V

    .line 56
    sput-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 59
    new-instance v8, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    .line 61
    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>()V

    .line 63
    sput-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 66
    new-instance v9, Lcom/android/systemui/statusbar/phone/ScrimState$9;

    .line 68
    invoke-direct {v9}, Lcom/android/systemui/statusbar/phone/ScrimState$9;-><init>()V

    .line 70
    sput-object v9, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 73
    new-instance v10, Lcom/android/systemui/statusbar/phone/ScrimState$10;

    .line 75
    invoke-direct {v10}, Lcom/android/systemui/statusbar/phone/ScrimState$10;-><init>()V

    .line 77
    sput-object v10, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 80
    new-instance v11, Lcom/android/systemui/statusbar/phone/ScrimState$11;

    .line 82
    invoke-direct {v11}, Lcom/android/systemui/statusbar/phone/ScrimState$11;-><init>()V

    .line 84
    sput-object v11, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 87
    new-instance v12, Lcom/android/systemui/statusbar/phone/ScrimState$12;

    .line 89
    invoke-direct {v12}, Lcom/android/systemui/statusbar/phone/ScrimState$12;-><init>()V

    .line 91
    sput-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 94
    filled-new-array/range {v0 .. v12}, [Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 96
    move-result-object v0

    .line 99
    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 100
    return-void
    .line 102
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 6
    const-wide/16 v0, 0xdc

    .line 8
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    .line 16
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    .line 19
    return-void
    .line 21
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getAnimateChange()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    .line 2
    return p0
    .line 4
.end method

.method public getMaxLightRevealScrimAlpha()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    return p0
    .line 4
.end method

.method public isLowPowerState()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    .line 2
    return p0
    .line 4
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateScrimColor(Lcom/android/systemui/scrim/ScrimView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const-string v0, "front_scrim_alpha"

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "back_scrim_alpha"

    .line 9
    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    .line 11
    float-to-int v1, v1

    .line 13
    const-wide/16 v2, 0x1000

    .line 14
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 19
    if-ne p1, p0, :cond_1

    .line 21
    const-string p0, "front_scrim_tint"

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    const-string p0, "back_scrim_tint"

    .line 26
    :goto_1
    const/high16 v0, -0x1000000

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 30
    move-result v1

    .line 33
    invoke-static {v2, v3, p0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    .line 37
    const/high16 p0, 0x3f800000    # 1.0f

    .line 40
    invoke-virtual {p1, p0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    .line 42
    return-void
    .line 45
.end method
