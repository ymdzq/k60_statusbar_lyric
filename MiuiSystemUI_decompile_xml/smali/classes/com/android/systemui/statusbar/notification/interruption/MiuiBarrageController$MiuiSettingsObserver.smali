.class public final Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 2
    new-instance p1, Landroid/os/Handler;

    .line 4
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "gb_boosting"

    .line 10
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 24
    iget p2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 26
    invoke-static {p1, v0, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    move-result p1

    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mIsGameMode:Z

    .line 36
    goto :goto_3

    .line 38
    :cond_1
    const-string v0, "enabled_notification_listeners"

    .line 39
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 51
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 59
    iget p2, p2, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 61
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result p2

    .line 70
    if-nez p2, :cond_3

    .line 71
    const-string p2, ":"

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    move p2, v3

    .line 79
    :goto_1
    array-length v0, p1

    .line 80
    if-ge p2, v0, :cond_3

    .line 81
    aget-object v0, p1, p2

    .line 83
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 85
    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    const-string v1, "com.xiaomi.barrage"

    .line 91
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 103
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarragePermissionEnabled:Z

    .line 105
    return-void

    .line 107
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 108
    goto :goto_1

    .line 110
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 111
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarragePermissionEnabled:Z

    .line 113
    goto :goto_3

    .line 115
    :cond_4
    const-string v0, "gb_bullet_chat"

    .line 116
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 118
    move-result-object v1

    .line 121
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p2

    .line 125
    if-eqz p2, :cond_6

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 128
    iget p2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 130
    invoke-static {p1, v0, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 132
    move-result p1

    .line 135
    if-ne p1, v2, :cond_5

    .line 136
    goto :goto_2

    .line 138
    :cond_5
    move v2, v3

    .line 139
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarrageSwitch:Z

    .line 140
    :cond_6
    :goto_3
    return-void
    .line 142
.end method

.method public final update()V
    .locals 2

    .line 1
    const-string v0, "gb_boosting"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 9
    const-string v0, "enabled_notification_listeners"

    .line 12
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 18
    const-string v0, "gb_bullet_chat"

    .line 21
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 27
    return-void
    .line 30
.end method
