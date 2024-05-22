.class public abstract Lcom/android/systemui/controls/dagger/ControlsModule;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final providesControlsFeatureEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 4

    .line 1
    const-string v0, "android.software.controls"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_4

    .line 9
    sget-object p0, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->mContext:Landroid/content/Context;

    .line 11
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->MIUI_LITE_V2:Z

    .line 13
    const/4 v1, 0x1

    .line 15
    if-eqz p0, :cond_0

    .line 16
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 18
    if-eqz p0, :cond_2

    .line 20
    :cond_0
    sget-object p0, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v2

    .line 27
    const v3, 0x7f0b010d    # @integer/use_control_panel_setting_default '1'

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 31
    move-result v2

    .line 34
    if-eq v2, v1, :cond_3

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 45
    move-result p0

    .line 48
    const-string/jumbo v3, "use_control_panel"

    .line 49
    invoke-static {v2, v3, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    move-result p0

    .line 55
    if-ne p0, v1, :cond_1

    .line 56
    move p0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move p0, v0

    .line 60
    :goto_0
    if-nez p0, :cond_3

    .line 61
    :cond_2
    move p0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move p0, v0

    .line 65
    :goto_1
    if-eqz p0, :cond_4

    .line 66
    move v0, v1

    .line 68
    :cond_4
    return v0
    .line 69
.end method
