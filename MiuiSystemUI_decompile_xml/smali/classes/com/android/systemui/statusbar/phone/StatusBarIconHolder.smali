.class public final Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field public mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field public mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

.field public mTag:I

.field public mType:I

.field public mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 6
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final isVisible()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    return v1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 15
    return p0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 20
    return p0

    .line 22
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 23
    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 25
    return p0
    .line 27
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "StatusBarIconHolder(type="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 9
    if-eqz v1, :cond_4

    .line 11
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    const/4 v2, 0x3

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    const/4 v2, 0x4

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    const-string v1, "UNKNOWN"

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "WIFI_NEW"

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const-string v1, "MOBILE_NEW"

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    const-string v1, "MOBILE_OLD"

    .line 34
    goto :goto_0

    .line 36
    :cond_3
    const-string v1, "WIFI_OLD"

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    const-string v1, "ICON"

    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, " tag="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " visible="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    .line 60
    move-result p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    const-string p0, ")"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    return-object p0
    .line 76
.end method
