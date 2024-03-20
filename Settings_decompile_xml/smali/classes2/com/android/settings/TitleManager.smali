.class public Lcom/android/settings/TitleManager;
.super Ljava/lang/Object;
.source "TitleManager.java"


# direct methods
.method public static getScreenTitle(Landroid/content/Context;)I
    .locals 0

    .line 12
    sget p0, Lcom/android/settings/R$string;->lock_screen_settings_title:I

    return p0
.end method

.method public static getStatusBarTitle()I
    .locals 1

    .line 16
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->notch_and_status_bar_settings:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->status_bar_title:I

    :goto_0
    return v0
.end method
