.class public abstract Lcom/android/systemui/keyguard/shared/model/WakefulnessModel$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static fromWakefulnessLifecycle(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    if-eq v1, v2, :cond_2

    .line 9
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    const/4 v3, 0x3

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->STARTING_TO_SLEEP:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "Invalid Wakefulness value: "

    .line 22
    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 31
    :cond_1
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->AWAKE:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->STARTING_TO_WAKE:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->ASLEEP:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 38
    :goto_0
    iget v3, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 40
    sget-object v4, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->OTHER:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 42
    sget-object v5, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->POWER_BUTTON:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 44
    if-eq v3, v2, :cond_5

    .line 46
    const/16 v2, 0xf

    .line 48
    if-eq v3, v2, :cond_4

    .line 50
    move-object v2, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 54
    goto :goto_1

    .line 56
    :cond_5
    move-object v2, v5

    .line 57
    :goto_1
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 58
    const/4 v3, 0x4

    .line 60
    if-ne p0, v3, :cond_6

    .line 61
    move-object v4, v5

    .line 63
    :cond_6
    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;-><init>(Lcom/android/systemui/keyguard/shared/model/WakefulnessState;Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;)V

    .line 64
    return-object v0
    .line 67
.end method
