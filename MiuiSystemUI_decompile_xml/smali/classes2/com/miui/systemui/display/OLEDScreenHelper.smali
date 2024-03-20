.class public final Lcom/miui/systemui/display/OLEDScreenHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEFAULT_INTERVAL:I

.field public static final IS_OLED_SCREEN:Z


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mConfigurationListener:Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;

.field public mDirection:I

.field public final mHandler:Lcom/miui/systemui/display/OLEDScreenHelper$mHandler$1;

.field public mInterval:I

.field public mIsScreenOn:Z

.field public mPixels:I

.field public final mReceiver:Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;

.field public final mScreenObserver:Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;

.field public mStatusBarMode:I

.field public final navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ro.vendor.display.type"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "oled"

    .line 8
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    const-string v0, "ro.display.type"

    .line 16
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    sput-boolean v0, Lcom/miui/systemui/display/OLEDScreenHelper;->IS_OLED_SCREEN:Z

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 34
    const-wide/16 v1, 0x2

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 38
    move-result-wide v0

    .line 41
    long-to-int v0, v0

    .line 42
    sput v0, Lcom/miui/systemui/display/OLEDScreenHelper;->DEFAULT_INTERVAL:I

    .line 43
    return-void
    .line 45
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 5
    iput-object p3, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    iput-object p4, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 9
    iput-object p5, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 11
    iput-object p6, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 13
    new-instance p2, Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;

    .line 15
    invoke-direct {p2, p0}, Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;-><init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V

    .line 17
    iput-object p2, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mScreenObserver:Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;

    .line 20
    new-instance p2, Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;

    .line 22
    invoke-direct {p2, p0}, Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;-><init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V

    .line 24
    iput-object p2, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mConfigurationListener:Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;

    .line 27
    new-instance v1, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;

    .line 29
    invoke-direct {v1, p0}, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;-><init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V

    .line 31
    iput-object v1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mReceiver:Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    move-result-object p2

    .line 39
    new-instance p3, Lcom/miui/systemui/display/OLEDScreenHelper$mHandler$1;

    .line 40
    invoke-direct {p3, p0, p2}, Lcom/miui/systemui/display/OLEDScreenHelper$mHandler$1;-><init>(Lcom/miui/systemui/display/OLEDScreenHelper;Landroid/os/Looper;)V

    .line 42
    iput-object p3, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mHandler:Lcom/miui/systemui/display/OLEDScreenHelper$mHandler$1;

    .line 45
    sget p2, Lcom/miui/systemui/display/OLEDScreenHelper;->DEFAULT_INTERVAL:I

    .line 47
    iput p2, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mInterval:I

    .line 49
    const/4 p2, 0x3

    .line 51
    iput p2, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 52
    sget-boolean p0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 54
    if-eqz p0, :cond_0

    .line 56
    new-instance v3, Landroid/content/IntentFilter;

    .line 58
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string/jumbo p0, "systemui.oled.strategy"

    .line 63
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 69
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v6, 0x2

    .line 73
    move-object v0, p1

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 75
    :cond_0
    return-void
    .line 78
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 p2, 0x6

    .line 2
    new-array v0, p2, [Ljava/lang/Object;

    .line 3
    sget-boolean v1, Lcom/miui/systemui/display/OLEDScreenHelper;->IS_OLED_SCREEN:Z

    .line 5
    const-string v2, "T"

    .line 7
    const-string v3, "f"

    .line 9
    if-eqz v1, :cond_0

    .line 11
    move-object v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v3

    .line 15
    :goto_0
    const/4 v4, 0x0

    .line 16
    aput-object v1, v0, v4

    .line 17
    iget v1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mDirection:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 24
    const/4 v4, 0x1

    .line 25
    aput-object v1, v0, v4

    .line 26
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    iget v4, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mInterval:I

    .line 30
    int-to-long v4, v4

    .line 32
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 33
    move-result-wide v4

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v1

    .line 40
    const/4 v4, 0x2

    .line 41
    aput-object v1, v0, v4

    .line 42
    iget v1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 49
    const/4 v4, 0x3

    .line 50
    aput-object v1, v0, v4

    .line 51
    iget v1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mStatusBarMode:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 58
    const/4 v4, 0x4

    .line 59
    aput-object v1, v0, v4

    .line 60
    iget-boolean p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 62
    if-eqz p0, :cond_1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    move-object v2, v3

    .line 67
    :goto_1
    const/4 p0, 0x5

    .line 68
    aput-object v2, v0, p0

    .line 69
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    const-string p2, "  OLEDScreenHelper: [IS_OLED_SCREEN=%s mDirection=%d mInterval=%d mPixels=%d mStatusBarMode=%d mIsScreenOn=%s]"

    .line 75
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    return-void
    .line 84
.end method

.method public final start(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 2
    sget-boolean v0, Lcom/miui/systemui/display/OLEDScreenHelper;->IS_OLED_SCREEN:Z

    .line 4
    if-eqz v0, :cond_1

    .line 6
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    const-string/jumbo v1, "start isScreenOn=%b"

    .line 25
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    const-string v1, "OLEDScreenHelper"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mHandler:Lcom/miui/systemui/display/OLEDScreenHelper$mHandler$1;

    .line 39
    const/16 v0, 0x2711

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 43
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mDirection:I

    .line 50
    iget p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mInterval:I

    .line 52
    int-to-long v1, p0

    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    :cond_1
    return-void
    .line 58
.end method

.method public final stop(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 2
    sget-boolean p1, Lcom/miui/systemui/display/OLEDScreenHelper;->IS_OLED_SCREEN:Z

    .line 4
    if-eqz p1, :cond_4

    .line 6
    sget-boolean p1, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const-string p1, "OLEDScreenHelper"

    .line 12
    const-string/jumbo v0, "stop"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mHandler:Lcom/miui/systemui/display/OLEDScreenHelper$mHandler$1;

    .line 20
    const/16 v0, 0x2711

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 29
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    const v1, 0x7f0a08e1    # @id/status_bar_contents

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object p1, v0

    .line 42
    :goto_0
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 52
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 60
    move-result-object p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    const p1, 0x7f0a067f    # @id/navigation_inflater

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    :cond_3
    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 78
    :cond_4
    return-void
    .line 81
.end method

.method public final updateView(Landroid/view/View;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 14
    move-result v1

    .line 17
    iget v2, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mDirection:I

    .line 18
    if-eqz v2, :cond_3

    .line 20
    const/4 v3, 0x1

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    const/4 v0, 0x3

    .line 28
    if-eq v2, v0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iget p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 32
    int-to-float p0, p0

    .line 34
    add-float/2addr v1, p0

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    iget p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 40
    int-to-float p0, p0

    .line 42
    add-float/2addr v0, p0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    iget p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 48
    int-to-float p0, p0

    .line 50
    sub-float/2addr v1, p0

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    iget p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 56
    int-to-float p0, p0

    .line 58
    sub-float/2addr v0, p0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 60
    :cond_4
    :goto_0
    return-void
    .line 63
.end method
