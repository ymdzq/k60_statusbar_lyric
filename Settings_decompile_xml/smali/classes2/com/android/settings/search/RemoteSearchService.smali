.class public Lcom/android/settings/search/RemoteSearchService;
.super Landroid/app/Service;
.source "RemoteSearchService.java"


# instance fields
.field private final mBinder:Lcom/android/settings/aidl/IRemoteSearchService$Stub;


# direct methods
.method static bridge synthetic -$$Nest$maction(Lcom/android/settings/search/RemoteSearchService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/RemoteSearchService;->action(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lcom/android/settings/search/RemoteSearchService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/RemoteSearchService$1;-><init>(Lcom/android/settings/search/RemoteSearchService;)V

    iput-object v0, p0, Lcom/android/settings/search/RemoteSearchService;->mBinder:Lcom/android/settings/aidl/IRemoteSearchService$Stub;

    return-void
.end method

.method private action(Ljava/lang/String;I)I
    .locals 6

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 45
    sget v0, Lcom/android/settings/R$string;->keywords_silent:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 47
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Sound;->touchSilentState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sget v0, Lcom/android/settings/R$string;->keywords_auto_rotate:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 53
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Display;->touchRotationLockState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    :cond_3
    sget v0, Lcom/android/settings/R$string;->keywords_bluetooth:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v2, v0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 59
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 60
    invoke-static {p2}, Lcom/android/settings/MiuiOptionUtils$Wireless;->touchBluetoothState(I)I

    move-result p0

    return p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 63
    :cond_5
    sget v0, Lcom/android/settings/R$string;->keywords_wifi:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    array-length v2, v0

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v5, v0, v4

    .line 65
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 66
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Wifi;->touchWLANState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 69
    :cond_7
    sget v0, Lcom/android/settings/R$string;->keywords_data:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    array-length v2, v0

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_9

    aget-object v5, v0, v4

    .line 71
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 72
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Mobile;->touchDataState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 75
    :cond_9
    sget v0, Lcom/android/settings/R$string;->keywords_torch:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v2, v0

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_b

    aget-object v5, v0, v4

    .line 77
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 78
    invoke-direct {p0, p2}, Lcom/android/settings/search/RemoteSearchService;->changeTorch(I)I

    move-result p0

    return p0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 81
    :cond_b
    sget v0, Lcom/android/settings/R$string;->keywords_do_not_disturb:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    array-length v2, v0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_d

    aget-object v5, v0, v4

    .line 83
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 84
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$DoNotDisturb;->touchDoNotDisturbState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 87
    :cond_d
    sget v0, Lcom/android/settings/R$string;->keywords_airplane:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    array-length v2, v0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_f

    aget-object v5, v0, v4

    .line 89
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 90
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Wireless;->touchAirplaneState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 93
    :cond_f
    sget v0, Lcom/android/settings/R$string;->keywords_vibrate:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    array-length v2, v0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_11

    aget-object v5, v0, v4

    .line 95
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 96
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Sound;->touchVibrateState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 99
    :cond_11
    sget v0, Lcom/android/settings/R$string;->keywords_gps:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    array-length v2, v0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_13

    aget-object v5, v0, v4

    .line 101
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 102
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Wireless;->touchGPSState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 105
    :cond_13
    sget v0, Lcom/android/settings/R$string;->keywords_hotspot:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v2, v0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_15

    aget-object v5, v0, v4

    .line 107
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 108
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Wifi;->touchHotspotState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 111
    :cond_15
    sget v0, Lcom/android/settings/R$string;->keywords_sync:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    array-length v2, v0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_17

    aget-object v5, v0, v4

    .line 113
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 114
    invoke-static {p2}, Lcom/android/settings/MiuiOptionUtils$Account;->touchSyncState(I)I

    move-result p0

    return p0

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 117
    :cond_17
    sget v0, Lcom/android/settings/R$string;->keywords_paper_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    array-length v2, v0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_19

    aget-object v5, v0, v4

    .line 119
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 120
    invoke-static {p0, p2}, Lcom/android/settings/MiuiOptionUtils$Display;->touchPaperModeState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 123
    :cond_19
    sget v0, Lcom/android/settings/R$string;->keywords_quick_ball:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    array-length v1, v0

    :goto_d
    if-ge v3, v1, :cond_1b

    aget-object v2, v0, v3

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 126
    invoke-direct {p0, p2}, Lcom/android/settings/search/RemoteSearchService;->changeQuickBall(I)I

    move-result p0

    return p0

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method private changeQuickBall(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method private changeTorch(I)I
    .locals 3

    .line 134
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "torch_state"

    const/4 v2, 0x0

    .line 133
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchService;->mBinder:Lcom/android/settings/aidl/IRemoteSearchService$Stub;

    return-object p0
.end method
