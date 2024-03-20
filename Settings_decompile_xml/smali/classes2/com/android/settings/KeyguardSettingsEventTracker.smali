.class public Lcom/android/settings/KeyguardSettingsEventTracker;
.super Ljava/lang/Object;
.source "KeyguardSettingsEventTracker.java"


# direct methods
.method private static track(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackBiometricUnlockDialogEvent(Z)V
    .locals 2

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u6dfb\u52a0\u6307\u7eb9"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "\u6dfb\u52a0\u4eba\u8138"

    :goto_0
    const-string/jumbo v1, "window_type"

    .line 79
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tip"

    const-string v1, "274.4.0.1.22624"

    .line 80
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x1511750

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "keyguard_data_version"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "window_click"

    .line 82
    invoke-static {p0, v0}, Lcom/android/settings/KeyguardSettingsEventTracker;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static trackBiometricUnlockExposeDialogEvent(Z)V
    .locals 2

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u6dfb\u52a0\u6307\u7eb9"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "\u6dfb\u52a0\u4eba\u8138"

    :goto_0
    const-string/jumbo v1, "window_type"

    .line 90
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tip"

    const-string v1, "274.4.0.1.24925"

    .line 91
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x1511750

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "keyguard_data_version"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "window_expose"

    .line 93
    invoke-static {p0, v0}, Lcom/android/settings/KeyguardSettingsEventTracker;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static trackKeyguardSwitchSetEvent(ZLjava/lang/String;)V
    .locals 2

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u5f00"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "\u5173"

    :goto_0
    const-string v1, "after_set_status"

    .line 68
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tip"

    .line 69
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x1511750

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "keyguard_data_version"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "set"

    .line 71
    invoke-static {p0, v0}, Lcom/android/settings/KeyguardSettingsEventTracker;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static trackKeyguardTimeoutSetEvent(J)V
    .locals 4

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    const-string/jumbo p0, "\u6c38\u4e0d"

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0xea60

    cmp-long v1, p0, v1

    const-wide/16 v2, 0x3e8

    if-gez v1, :cond_2

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u79d2"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u5206\u949f"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "after_set_status"

    .line 57
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tip"

    const-string p1, "274.3.0.1.22615"

    .line 58
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x1511750

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "keyguard_data_version"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "set"

    .line 60
    invoke-static {p0, v0}, Lcom/android/settings/KeyguardSettingsEventTracker;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
