.class public abstract Lcom/miui/systemui/modulesettings/KeyguardSettings$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getKeyguardNotificationStatus(ILandroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v1

    .line 9
    const-string v2, "new_device_after_support_notification_animation"

    .line 10
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_1

    .line 23
    sget-object v1, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 30
    const v1, 0x111012b    # @android:bool/config_dozePickupGestureEnabled

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    const/4 v2, 0x2

    .line 40
    :cond_1
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    .line 41
    if-eqz p1, :cond_2

    .line 43
    goto :goto_1

    .line 45
    :cond_2
    move v3, v2

    .line 46
    :goto_1
    const-string/jumbo p1, "wakeup_for_keyguard_notification"

    .line 47
    invoke-static {v0, p1, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 50
    move-result p0

    .line 53
    return p0
    .line 54
.end method
