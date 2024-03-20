.class public Lcom/android/settings/shoulderkey/SoundPoolUtil;
.super Ljava/lang/Object;
.source "SoundPoolUtil.java"


# static fields
.field private static final LOADED_SOUND_IDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOUNDS_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mIsSoundPooLoadComplete:Z

.field private static mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOADED_SOUND_IDS()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->LOADED_SOUND_IDS:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckSoundPoolLoadCompleted()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->checkSoundPoolLoadCompleted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->SOUNDS_MAP:Landroid/util/ArrayMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->LOADED_SOUND_IDS:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mIsSoundPooLoadComplete:Z

    return-void
.end method

.method private static checkSoundPoolLoadCompleted()V
    .locals 2

    .line 60
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->LOADED_SOUND_IDS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mIsSoundPooLoadComplete:Z

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 33
    sput-object p0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mContext:Landroid/content/Context;

    .line 35
    new-instance p0, Landroid/media/SoundPool$Builder;

    invoke-direct {p0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    sput-object p0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mSoundPool:Landroid/media/SoundPool;

    .line 41
    new-instance v0, Lcom/android/settings/shoulderkey/SoundPoolUtil$1;

    invoke-direct {v0}, Lcom/android/settings/shoulderkey/SoundPoolUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 52
    sget-object p0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->SOUNDS_MAP:Landroid/util/ArrayMap;

    sget v0, Lcom/android/settings/R$raw;->keys_kanata_open_l:I

    invoke-static {v0}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->loadSound(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "classic"

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget v0, Lcom/android/settings/R$raw;->keys_mechanicals_open_l:I

    invoke-static {v0}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->loadSound(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bullet"

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget v0, Lcom/android/settings/R$raw;->keys_scifi_open_l:I

    invoke-static {v0}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->loadSound(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "current"

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget v0, Lcom/android/settings/R$raw;->keys_car_open_l:I

    invoke-static {v0}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->loadSound(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "wind"

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static loadSound(I)I
    .locals 3

    .line 66
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 70
    :cond_0
    sget-object v1, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static play(Ljava/lang/String;Z)V
    .locals 9

    .line 82
    sget-boolean v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mIsSoundPooLoadComplete:Z

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->SOUNDS_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 87
    sget-object v2, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v7, p0

    const v8, 0x3f733333    # 0.95f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2
    return-void
.end method

.method public static release()V
    .locals 2

    .line 99
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "SoundPoolUtil"

    const-string v1, "SoundPool release"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mIsSoundPooLoadComplete:Z

    .line 102
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 103
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->SOUNDS_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 104
    sget-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->LOADED_SOUND_IDS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/android/settings/shoulderkey/SoundPoolUtil;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
