.class public abstract Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static isMiuiOptimizationEnabled(ILandroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "miui_optimization"

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 9
    move-result p0

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
    .line 17
.end method
