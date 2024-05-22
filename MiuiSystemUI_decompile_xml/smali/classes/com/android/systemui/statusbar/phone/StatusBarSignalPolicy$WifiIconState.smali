.class public final Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
.super Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public activityResId:I

.field public airplaneSpacerVisible:Z

.field public demoMode:Z

.field public level:I

.field public meteredHint:Z

.field public mloAvailable:Z

.field public noDefaultNetwork:Z

.field public noNetworksAvailable:Z

.field public noValidatedNetwork:Z

.field public resId:I

.field public showWifiStandard:Z

.field public signalSpacerVisible:Z

.field public wifiNoNetwork:Z

.field public wifiStandard:I


# virtual methods
.method public final copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    .line 4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 11
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 23
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 25
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 27
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 31
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 33
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    .line 39
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    .line 41
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    .line 43
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    .line 45
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    .line 47
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    .line 49
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 51
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 53
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 55
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 57
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 59
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 61
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 63
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 65
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 67
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 69
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 71
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 73
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 75
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 77
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 79
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 81
    return-object v0
    .line 83
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    return v0

    .line 20
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 21
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 23
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 25
    if-ne v1, v2, :cond_2

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 29
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 31
    if-ne v1, v2, :cond_2

    .line 33
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 35
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 37
    if-ne v1, v2, :cond_2

    .line 39
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    .line 41
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    .line 43
    if-ne v1, v2, :cond_2

    .line 45
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    .line 47
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    .line 49
    if-ne v1, v2, :cond_2

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    .line 53
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    .line 55
    if-ne v1, v2, :cond_2

    .line 57
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 59
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 61
    if-ne v1, v2, :cond_2

    .line 63
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 65
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 67
    if-ne v1, v2, :cond_2

    .line 69
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 71
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 73
    if-ne v1, v2, :cond_2

    .line 75
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 77
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 79
    if-ne v1, v2, :cond_2

    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 83
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 85
    if-ne v1, v2, :cond_2

    .line 87
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 89
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 91
    if-ne v1, v2, :cond_2

    .line 93
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 95
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 97
    if-ne v1, v2, :cond_2

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 101
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 103
    if-ne p0, p1, :cond_2

    .line 105
    const/4 v0, 0x1

    .line 107
    :cond_2
    :goto_0
    return v0
    .line 108
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->hashCode()I

    .line 4
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 17
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v4

    .line 23
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v5

    .line 29
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v6

    .line 35
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v7

    .line 41
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v8

    .line 47
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v9

    .line 53
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v10

    .line 59
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    move-result-object v11

    .line 65
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v12

    .line 71
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v13

    .line 77
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object v14

    .line 83
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v15

    .line 89
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    move-result-object v16

    .line 95
    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 100
    move-result v0

    .line 103
    return v0
    .line 104
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "WifiIconState(resId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", visible="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "), activityResId = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", wifiStandard="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", meteredHint="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", showWifiStandard="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", wifiNoNetwork="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiNoNetwork:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", demoMode="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", level="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->level:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", mloAvailable="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->mloAvailable:Z

    .line 99
    const-string v1, ")"

    .line 101
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 106
    return-object p0
    .line 107
.end method
