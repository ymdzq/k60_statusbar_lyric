.class public abstract Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideSystemStatusAnimationScheduler(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .locals 7

    .line 1
    sget v0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule;->$r8$clinit:I

    .line 2
    sget-object v0, Lcom/android/systemui/flags/Flags;->PLUG_IN_STATUS_BAR_CHIP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 4
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    new-instance p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 14
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    move-object v3, p3

    .line 19
    move-object v4, p4

    .line 20
    move-object v5, p5

    .line 21
    move-object v6, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 27
    move-object v0, p0

    .line 29
    move-object v1, p1

    .line 30
    move-object v2, p2

    .line 31
    move-object v3, p3

    .line 32
    move-object v4, p4

    .line 33
    move-object v5, p5

    .line 34
    move-object v6, p7

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 36
    :goto_0
    return-object p0
    .line 39
.end method
