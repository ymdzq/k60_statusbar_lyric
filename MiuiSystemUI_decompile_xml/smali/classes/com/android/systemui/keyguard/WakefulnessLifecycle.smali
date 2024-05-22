.class public final Lcom/android/systemui/keyguard/WakefulnessLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mLastSleepOriginLocation:Landroid/graphics/Point;

.field public mLastSleepReason:I

.field public mLastWakeOriginLocation:Landroid/graphics/Point;

.field public mLastWakeReason:I

.field public mLastWakeTime:J

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mWakefulness:I

.field public final mWallpaperManagerService:Landroid/app/IWallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/dump/DumpManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    .line 2
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 9
    const-wide/16 v1, -0x1

    .line 11
    iput-wide v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeTime:J

    .line 13
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 16
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 18
    iput-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 20
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 36
    const-string p1, "WakefulnessLifecycle"

    .line 38
    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 40
    return-void
    .line 43
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "WakefulnessLifecycle:"

    .line 2
    const-string v0, "  mWakefulness="

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return-void
    .line 22
.end method

.method public final getPowerButtonOrigin()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 19
    const v1, 0x7f070e6e    # @dimen/physical_power_button_center_screen_location_y '620.0px'

    .line 21
    if-eqz v2, :cond_1

    .line 24
    new-instance v2, Landroid/graphics/Point;

    .line 26
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 37
    invoke-direct {v2, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 38
    return-object v2

    .line 41
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v0

    .line 51
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    invoke-direct {v2, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    return-object v2
    .line 57
.end method
