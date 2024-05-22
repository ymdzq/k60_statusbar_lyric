.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "SHADE_LOCKED"

    .line 2
    const/4 v1, 0x7

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    if-eqz p1, :cond_0

    .line 6
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    .line 10
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    .line 14
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 17
    if-eqz p1, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/high16 v0, -0x1000000

    .line 23
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 25
    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;)V

    .line 31
    :cond_2
    return-void
    .line 34
.end method
