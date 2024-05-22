.class public abstract Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static getClockRegistry(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/log/LogBuffer;)Lcom/android/systemui/shared/clocks/ClockRegistry;
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    new-instance v10, Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 3
    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_CUSTOM_CLOCKS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 5
    move-object/from16 v2, p5

    .line 7
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 9
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 11
    move-result v6

    .line 14
    new-instance v7, Lcom/android/systemui/shared/clocks/DefaultClockProvider;

    .line 15
    sget-object v0, Lcom/android/systemui/flags/Flags;->STEP_CLOCK_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 17
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 19
    move-result v0

    .line 22
    move-object/from16 v2, p6

    .line 23
    move-object/from16 v3, p7

    .line 25
    invoke-direct {v7, p0, v3, v2, v0}, Lcom/android/systemui/shared/clocks/DefaultClockProvider;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Z)V

    .line 27
    const v0, 0x7f1306aa    # @string/lockscreen_clock_id_fallback 'DEFAULT'

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v8

    .line 36
    move-object v0, v10

    .line 37
    move-object v2, p1

    .line 38
    move-object v3, p2

    .line 39
    move-object v4, p3

    .line 40
    move-object v5, p4

    .line 41
    move-object/from16 v9, p8

    .line 42
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/ClockRegistry;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZLcom/android/systemui/shared/clocks/DefaultClockProvider;Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V

    .line 44
    invoke-virtual {v10}, Lcom/android/systemui/shared/clocks/ClockRegistry;->registerListeners()V

    .line 47
    return-object v10
    .line 50
.end method
