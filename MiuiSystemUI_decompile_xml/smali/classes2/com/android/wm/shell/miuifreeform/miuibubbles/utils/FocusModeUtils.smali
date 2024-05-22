.class public abstract Lcom/android/wm/shell/miuifreeform/miuibubbles/utils/FocusModeUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static hasFinishFocusMode(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v2

    .line 9
    const-string v3, "misettings_key_enter_focus_time"

    .line 10
    const-wide/16 v4, 0x0

    .line 12
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 14
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v2

    .line 22
    const-string v3, "misettings_focus_limit_time"

    .line 23
    const/16 v4, 0x14

    .line 25
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    move-result v2

    .line 30
    int-to-long v2, v2

    .line 31
    const-wide/32 v4, 0xea60

    .line 32
    mul-long/2addr v2, v4

    .line 35
    cmp-long v0, v0, v2

    .line 36
    const/4 v1, 0x1

    .line 38
    if-gez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object p0

    .line 44
    const-string/jumbo v0, "settings_focus_mode_status"

    .line 45
    const/4 v2, 0x0

    .line 48
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 49
    move-result p0

    .line 52
    if-eq p0, v1, :cond_0

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    move v1, v2

    .line 56
    :cond_1
    :goto_0
    return v1
    .line 57
.end method
