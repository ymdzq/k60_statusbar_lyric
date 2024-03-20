.class public Lcom/android/settings/MiuiOptionUtils$Account;
.super Ljava/lang/Object;
.source "MiuiOptionUtils.java"


# direct methods
.method public static touchSyncState(I)I
    .locals 2

    .line 465
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return p0

    :cond_1
    return v0
.end method
