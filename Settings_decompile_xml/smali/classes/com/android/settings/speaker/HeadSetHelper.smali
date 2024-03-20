.class public Lcom/android/settings/speaker/HeadSetHelper;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;,
        Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;
    }
.end annotation


# instance fields
.field private mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

.field private mOnHeadSetChangeListener:Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnHeadSetChangeListener(Lcom/android/settings/speaker/HeadSetHelper;)Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/HeadSetHelper;->mOnHeadSetChangeListener:Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/speaker/HeadSetHelper;->mOnHeadSetChangeListener:Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;

    return-void
.end method

.method public static isHeadsetOn(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "audio"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 92
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 94
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 95
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 96
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 97
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 98
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public registerHeadsetReceiver(Landroid/content/Context;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/settings/speaker/HeadSetHelper;->mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;-><init>(Lcom/android/settings/speaker/HeadSetHelper;Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/speaker/HeadSetHelper;->mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/android/settings/speaker/HeadSetHelper;->mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 48
    iget-object p0, p0, Lcom/android/settings/speaker/HeadSetHelper;->mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    invoke-virtual {p1, p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unregisterHeadsetReceiver(Landroid/content/Context;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/speaker/HeadSetHelper;->mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/settings/speaker/HeadSetHelper;->mHeadsetPlugReceiver:Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;

    :cond_0
    return-void
.end method
