.class public abstract Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideOngoingCallController(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;
    .locals 16

    .line 1
    move-object/from16 v13, p11

    .line 2
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v14, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 7
    iget-object v0, v13, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 11
    invoke-virtual {v0, v14}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    invoke-static/range {p8 .. p8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 32
    move-result-object v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 37
    move-result-object v1

    .line 40
    :goto_1
    move-object v10, v1

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-static/range {p9 .. p9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 44
    move-result-object v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 49
    move-result-object v0

    .line 52
    :goto_2
    move-object v11, v0

    .line 53
    new-instance v15, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 54
    move-object v0, v15

    .line 56
    move-object/from16 v1, p0

    .line 57
    move-object/from16 v2, p1

    .line 59
    move-object/from16 v3, p11

    .line 61
    move-object/from16 v4, p2

    .line 63
    move-object/from16 v5, p3

    .line 65
    move-object/from16 v6, p4

    .line 67
    move-object/from16 v7, p5

    .line 69
    move-object/from16 v8, p6

    .line 71
    move-object/from16 v9, p7

    .line 73
    move-object/from16 v12, p10

    .line 75
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;Lcom/android/systemui/dump/DumpManager;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 77
    move-object/from16 v0, p7

    .line 80
    invoke-virtual {v0, v15}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 82
    iget-object v0, v13, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 85
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 87
    invoke-virtual {v0, v14}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    .line 95
    move-object/from16 v1, p1

    .line 97
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 99
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 101
    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->statusBarStateListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$statusBarStateListener$1;

    .line 104
    move-object/from16 v1, p10

    .line 106
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 108
    :cond_3
    return-object v15
    .line 111
.end method
