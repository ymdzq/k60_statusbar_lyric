.class public final Lcom/android/systemui/statusbar/phone/MiuiLightBarController;
.super Lcom/android/systemui/statusbar/phone/LightBarController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/controller/ForceBlackObserver$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/SmartDarkObserver$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public mBarModeChangeListener:Lcom/miui/systemui/display/OLEDScreenHelper$start$1;

.field public mForceBlack:Z

.field public mOrientation:I

.field public final mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field public final mSamplingBounds:Landroid/graphics/Rect;

.field public mSmartDarkEnable:Z

.field public mSmartDarkLight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/policy/SmartDarkObserver;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v9, p6

    .line 3
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object/from16 v6, p9

    .line 10
    move-object/from16 v7, p10

    .line 12
    move-object/from16 v8, p11

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 24
    const-class v2, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 26
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 32
    invoke-virtual {v2, p0}, Lcom/miui/systemui/controller/ForceBlackObserver;->addCallback(Lcom/miui/systemui/controller/ForceBlackObserver$Callback;)V

    .line 34
    const-class v2, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 37
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    check-cast v2, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 43
    iget-boolean v2, v2, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 45
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mForceBlack:Z

    .line 47
    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 49
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 55
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 57
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 66
    move-result-object v2

    .line 69
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 70
    iput v2, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mOrientation:I

    .line 72
    new-instance v2, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 74
    move-object v3, p5

    .line 76
    iget-object v3, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 77
    new-instance v4, Lcom/android/systemui/statusbar/phone/MiuiLightBarController$1;

    .line 79
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiLightBarController;)V

    .line 81
    move-object/from16 v5, p8

    .line 84
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V

    .line 86
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 89
    move-object/from16 v3, p7

    .line 91
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 93
    const/4 v3, 0x1

    .line 96
    iput-boolean v3, v2, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    .line 97
    invoke-virtual {v2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 99
    iget-object v3, v9, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 102
    monitor-enter v3

    .line 104
    :try_start_0
    iget-object v4, v9, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 105
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 107
    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-boolean v3, v9, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mSmartDark:Z

    .line 116
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 118
    if-eq v4, v3, :cond_1

    .line 120
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 122
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 124
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 126
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 129
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 133
    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw v0
    .line 143
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, " mSmartDarkEnable = "

    .line 7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 12
    const-string v1, " mSmartDarkLight = "

    .line 14
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object p2

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkLight:Z

    .line 20
    const-string v1, " mSamplingBounds = "

    .line 22
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p2

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mOrientation:I

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onForceBlackChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mForceBlack:Z

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onStatusBarModeChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarModeChanged(I)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mBarModeChangeListener:Lcom/miui/systemui/display/OLEDScreenHelper$start$1;

    .line 5
    if-eqz p0, :cond_2

    .line 7
    sget-boolean v0, Lcom/miui/systemui/display/OLEDScreenHelper;->IS_OLED_SCREEN:Z

    .line 9
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper$start$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    goto :goto_1

    .line 18
    :cond_0
    iget v0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mStatusBarMode:I

    .line 19
    if-eq v0, p1, :cond_2

    .line 21
    if-eqz p1, :cond_1

    .line 23
    const/4 v0, 0x6

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->stop(Z)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-boolean v0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 34
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->stop(Z)V

    .line 36
    iget-boolean v0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->start(Z)V

    .line 41
    :goto_0
    iput p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mStatusBarMode:I

    .line 44
    :cond_2
    :goto_1
    return-void
    .line 46
.end method

.method public final setWindowState(III)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x1

    .line 5
    if-ne p2, p1, :cond_3

    .line 6
    const/4 p2, 0x0

    .line 8
    if-nez p3, :cond_1

    .line 9
    goto :goto_0

    .line 11
    :cond_1
    move p1, p2

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 17
    const/16 p0, 0x7593

    .line 20
    if-nez p1, :cond_2

    .line 22
    const/16 p1, 0x100

    .line 24
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 26
    goto :goto_1

    .line 29
    :cond_2
    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 30
    :cond_3
    :goto_1
    return-void
    .line 33
.end method

.method public final updateStatus([Lcom/android/internal/view/AppearanceRegion;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mForceBlack:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mOrientation:I

    .line 10
    if-ne v0, v2, :cond_0

    .line 12
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 16
    move-result p0

    .line 19
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 20
    return-void

    .line 23
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 24
    if-ne v0, v2, :cond_1

    .line 26
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 30
    move-result p0

    .line 33
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 34
    return-void

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 38
    if-eqz v0, :cond_2

    .line 40
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkLight:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 46
    move-result p0

    .line 49
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 50
    return-void

    .line 53
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 54
    return-void
    .line 57
.end method
