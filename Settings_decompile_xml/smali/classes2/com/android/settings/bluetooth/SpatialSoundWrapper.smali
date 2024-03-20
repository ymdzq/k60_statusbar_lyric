.class public Lcom/android/settings/bluetooth/SpatialSoundWrapper;
.super Ljava/lang/Object;
.source "SpatialSoundWrapper.java"


# instance fields
.field private isSupportSpatialAudio:Ljava/lang/reflect/Method;

.field private mMethod3DSurroundEnable:Ljava/lang/reflect/Method;

.field private mMiSoundInstance:Ljava/lang/Object;

.field private switchSpatialAudio:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->mMethod3DSurroundEnable:Ljava/lang/reflect/Method;

    .line 20
    iput-object v0, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isSupportSpatialAudio:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->switchSpatialAudio:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v0, "android.media.audiofx.MiSound"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 34
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "set3dSurround"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v3, v6, v4

    .line 37
    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->mMethod3DSurroundEnable:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    const-string v0, "SpatialSoundWrapper"

    const-string v2, "android.media.audiofx.MiSound newInstance get null"

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "android.media.audiofx.MiEffectUtils"

    .line 41
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isSupportSpatialAudio"

    new-array v3, v4, [Ljava/lang/Class;

    .line 43
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isSupportSpatialAudio:Ljava/lang/reflect/Method;

    const-string/jumbo v2, "switchSpatialAudio"

    new-array v1, v1, [Ljava/lang/Class;

    .line 44
    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->switchSpatialAudio:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getAudioFeature()I
    .locals 1

    const-string/jumbo p0, "ro.vendor.audio.feature.spatial"

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getHeadTrackSummary(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isSupportHeadTrackAlgoPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 174
    sget p0, Lcom/android/settings/R$string;->headset_head_tracking_desc:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnable3DSurround()Z
    .locals 1

    const-string/jumbo p0, "persist.vendor.audio.3dsurround.enable"

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPhoneSupportSurroundAlgo()Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->getAudioFeature()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportHeadTrackAlgoPhone()Z
    .locals 3

    .line 126
    iget-object p0, p0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isSupportSpatialAudio:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SpatialSoundWrapper"

    const-string v1, "isSupportSpatialAudio meth is null"

    .line 127
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public isSupportSpatialAndSurround()Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->getAudioFeature()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
