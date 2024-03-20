.class public final Lcom/android/keyguard/AwesomeLockScreen$3;
.super Lcom/miui/interfaces/keyguard/FaceUnlockCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final onFaceAuthLocked()V
    .locals 3

    .line 1
    const-string p0, "AwesomeLockScreen"

    .line 2
    const-string v0, "onFaceAuthLocked"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 15
    const-string v2, "face_detect_state_msg"

    .line 17
    invoke-static {v2, p0, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 19
    return-void
    .line 22
.end method

.method public final onFaceEnableChange(ZZ)V
    .locals 7

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "onFaceEnableChange enable="

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    const-string v0, ";stay="

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    const-string v0, "AwesomeLockScreen"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 29
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 31
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 33
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    if-eqz p1, :cond_0

    .line 39
    move-wide v5, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-wide v5, v3

    .line 43
    :goto_0
    const-string p1, "face_enable"

    .line 44
    invoke-static {p1, v0, v5, v6}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 49
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 51
    if-eqz p2, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    move-wide v1, v3

    .line 56
    :goto_1
    const-string p1, "face_unlock_success_stay_screen_enable"

    .line 57
    invoke-static {p1, p0, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 59
    return-void
    .line 62
.end method
