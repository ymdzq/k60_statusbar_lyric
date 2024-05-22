.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$4;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AUTH_SCRIMMED"

    .line 2
    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    .line 4
    iget v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    .line 6
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    .line 8
    iget v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 12
    iget p1, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 16
    const/high16 p1, -0x1000000

    .line 18
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 20
    const p1, 0x3f28f5c3    # 0.66f

    .line 22
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 25
    return-void
    .line 27
.end method
