.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$10;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "PULSING"

    .line 2
    const/16 v1, 0xa

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getMaxLightRevealScrimAlpha()F
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const p0, 0x3f19999a    # 0.6f

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getMaxLightRevealScrimAlpha()F

    .line 12
    move-result p0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public final prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 4
    const/high16 p1, -0x1000000

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 10
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    const-wide/16 v0, 0x3e8

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0xdc

    .line 23
    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 25
    return-void
    .line 27
.end method
