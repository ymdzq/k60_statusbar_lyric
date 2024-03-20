.class public Lcom/android/settings/sound/VibratorFeatureUtil;
.super Ljava/lang/Object;
.source "VibratorFeatureUtil.java"


# static fields
.field private static volatile sInstance:Lcom/android/settings/sound/VibratorFeatureUtil;


# instance fields
.field private mVibratorExt:Lvendor/hardware/vibratorfeature/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lvendor/hardware/vibratorfeature/Vibrator;

    invoke-direct {v0, p1}, Lvendor/hardware/vibratorfeature/Vibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sound/VibratorFeatureUtil;->mVibratorExt:Lvendor/hardware/vibratorfeature/Vibrator;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/sound/VibratorFeatureUtil;
    .locals 2

    .line 17
    sget-object v0, Lcom/android/settings/sound/VibratorFeatureUtil;->sInstance:Lcom/android/settings/sound/VibratorFeatureUtil;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/android/settings/sound/VibratorFeatureUtil;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/android/settings/sound/VibratorFeatureUtil;->sInstance:Lcom/android/settings/sound/VibratorFeatureUtil;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/settings/sound/VibratorFeatureUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/sound/VibratorFeatureUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/sound/VibratorFeatureUtil;->sInstance:Lcom/android/settings/sound/VibratorFeatureUtil;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/sound/VibratorFeatureUtil;->sInstance:Lcom/android/settings/sound/VibratorFeatureUtil;

    return-object p0
.end method


# virtual methods
.method public setAmplitude(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 29
    iget-object p0, p0, Lcom/android/settings/sound/VibratorFeatureUtil;->mVibratorExt:Lvendor/hardware/vibratorfeature/Vibrator;

    invoke-virtual {p0, p1}, Lvendor/hardware/vibratorfeature/Vibrator;->setAmplitude(F)V

    return-void
.end method
