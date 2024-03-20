.class public final synthetic Lcom/android/systemui/MiuiVendorServices$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/MiuiVendorServices;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/MiuiVendorServices;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/MiuiVendorServices$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/MiuiVendorServices;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/MiuiVendorServices$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/MiuiVendorServices;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->miuiNotificationCenter:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/MiuiVendorServices;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->start(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 16
    const-string/jumbo v1, "sysui_powerui_enabled"

    .line 17
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 21
    const-string v1, "charging_sounds_enabled"

    .line 24
    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 26
    const/16 v3, 0xa

    .line 29
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 31
    const-string v1, "music_in_white_list"

    .line 34
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    const-class v1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 39
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 45
    iget-object v3, v1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 47
    const v4, 0x7f050099    # @bool/play_incall_notification 'false'

    .line 49
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 52
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-nez v3, :cond_1

    .line 57
    const-string v3, "OR"

    .line 59
    iget-object v1, v1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    move v1, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    move v1, v4

    .line 72
    :goto_1
    const-string v3, "in_call_notification_enabled"

    .line 73
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    const-string/jumbo v1, "systemui_fsgesture_support_superpower"

    .line 78
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    const-string/jumbo v1, "sysui_tuner_demo_on"

    .line 84
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    iget-object p0, p0, Lcom/android/systemui/MiuiVendorServices;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    move-result-object p0

    .line 95
    const-string v0, "notification_focus_protocol"

    .line 96
    invoke-static {p0, v0, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 98
    return-void
    .line 101
.end method
