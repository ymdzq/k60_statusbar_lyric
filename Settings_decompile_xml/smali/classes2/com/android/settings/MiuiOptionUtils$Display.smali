.class public Lcom/android/settings/MiuiOptionUtils$Display;
.super Ljava/lang/Object;
.source "MiuiOptionUtils.java"


# direct methods
.method public static touchPaperModeState(Landroid/content/Context;I)I
    .locals 3

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    .line 245
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    .line 247
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return p1

    :cond_0
    return v0
.end method

.method public static touchRotationLockState(Landroid/content/Context;I)I
    .locals 2

    .line 264
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    return p1

    :cond_1
    return v0
.end method
