.class public final Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;
.super Ljava/lang/Object;
.source "AnimatedNavHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedNavHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedNavHost.kt\ncom/android/settingslib/spa/framework/compose/AnimatedNavHostKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 NavController.kt\nandroidx/navigation/NavControllerKt\n+ 5 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilderKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 8 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 9 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 10 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 12 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,264:1\n67#2,3:265\n66#2:268\n36#2:280\n67#2,3:292\n66#2:295\n67#2,3:302\n66#2:305\n83#2,3:312\n1114#3,3:269\n1117#3,3:275\n1114#3,3:281\n1117#3,3:289\n1114#3,6:296\n1114#3,6:306\n1114#3,6:315\n2550#4:272\n57#5,2:273\n76#6:278\n150#7:279\n150#7:323\n47#8:284\n49#8:288\n50#9:285\n55#9:287\n106#10:286\n1855#11,2:321\n76#12:324\n*S KotlinDebug\n*F\n+ 1 AnimatedNavHost.kt\ncom/android/settingslib/spa/framework/compose/AnimatedNavHostKt\n*L\n93#1:265,3\n93#1:268\n160#1:280\n171#1:292,3\n171#1:295\n185#1:302,3\n185#1:305\n203#1:312,3\n93#1:269,3\n93#1:275,3\n160#1:281,3\n160#1:289,3\n171#1:296,6\n185#1:306,6\n203#1:315,6\n94#1:272\n94#1:273,2\n136#1:278\n157#1:279\n240#1:323\n161#1:284\n161#1:288\n161#1:285\n161#1:287\n161#1:286\n234#1:321,2\n160#1:324\n*E\n"
.end annotation


# static fields
.field private static final enterTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final exitTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final popEnterTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final popExitTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->enterTransitions:Ljava/util/Map;

    .line 255
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->exitTransitions:Ljava/util/Map;

    .line 259
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->popEnterTransitions:Ljava/util/Map;

    .line 263
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->popExitTransitions:Ljava/util/Map;

    return-void
.end method

.method public static final AnimatedNavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Landroidx/navigation/NavGraph;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p10

    const-string v0, "navController"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graph"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x233a413e

    move-object/from16 v3, p8

    .line 134
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, v10, 0x4

    if-eqz v4, :cond_0

    .line 124
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v5, v10, 0x8

    if-eqz v5, :cond_1

    .line 125
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    :goto_1
    and-int/lit8 v6, v10, 0x10

    if-eqz v6, :cond_2

    .line 127
    sget-object v6, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$5;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$5;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v10, 0x20

    if-eqz v7, :cond_3

    .line 129
    sget-object v7, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$6;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$6;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v10, 0x40

    if-eqz v8, :cond_4

    const v8, -0x380001

    and-int v8, p9, v8

    move v9, v8

    move-object v8, v6

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    move/from16 v9, p9

    :goto_4
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_5

    const v11, -0x1c00001

    and-int/2addr v9, v11

    move v11, v9

    move-object v9, v7

    goto :goto_5

    :cond_5
    move v11, v9

    move-object/from16 v9, p7

    .line 133
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, -0x1

    const-string v13, "com.android.settingslib.spa.framework.compose.AnimatedNavHost (AnimatedNavHost.kt:120)"

    .line 134
    invoke-static {v0, v11, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 136
    :cond_6
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 137
    sget-object v12, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v13, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v12, v3, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v12

    if-eqz v12, :cond_1e

    .line 140
    sget-object v13, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    sget v14, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->$stable:I

    invoke-virtual {v13, v3, v14}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v13

    const/16 v20, 0x0

    if-eqz v13, :cond_7

    .line 141
    invoke-interface {v13}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v13

    goto :goto_6

    :cond_7
    move-object/from16 v13, v20

    .line 145
    :goto_6
    invoke-virtual {v1, v0}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 146
    invoke-interface {v12}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    const-string/jumbo v12, "viewModelStoreOwner.viewModelStore"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    if-eqz v13, :cond_8

    .line 148
    invoke-virtual {v1, v13}, Landroidx/navigation/NavHostController;->setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 151
    :cond_8
    invoke-virtual/range {p0 .. p1}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;)V

    const/4 v0, 0x0

    .line 153
    invoke-static {v3, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v12

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v13

    const-string v14, "animatedComposable"

    .line 150
    invoke-virtual {v13, v14}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v13

    .line 157
    instance-of v14, v13, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;

    if-eqz v14, :cond_9

    check-cast v13, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;

    move-object v15, v13

    goto :goto_7

    :cond_9
    move-object/from16 v15, v20

    :goto_7
    if-nez v15, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_b

    goto :goto_8

    :cond_b
    new-instance v12, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$composeNavigator$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$composeNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_8
    return-void

    .line 160
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    const v14, 0x44faf204

    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 1114
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_d

    .line 1115
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v14, v13, :cond_e

    .line 161
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    .line 106
    new-instance v14, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$lambda$4$$inlined$map$1;

    invoke-direct {v14, v13}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$lambda$4$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 1117
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v13, v14

    check-cast v13, Lkotlinx/coroutines/flow/Flow;

    .line 166
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x38

    const/16 v18, 0x2

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v16

    move-object/from16 p5, v3

    move/from16 p6, v17

    move/from16 p7, v18

    invoke-static/range {p2 .. p7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 168
    invoke-static {v14}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->AnimatedNavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    const v0, -0x57853e49

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-eqz v13, :cond_16

    const v0, 0x607fb4c4

    .line 171
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    .line 68
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    .line 69
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    .line 1114
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_f

    .line 1115
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 171
    :cond_f
    new-instance v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$finalEnter$1$1;

    invoke-direct {v0, v15, v8, v6}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$finalEnter$1$1;-><init>(Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 1117
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    :cond_10
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 171
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const v1, 0x607fb4c4

    .line 185
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 68
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    .line 69
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    .line 1114
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_11

    .line 1115
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_12

    .line 185
    :cond_11
    new-instance v2, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$finalExit$1$1;

    invoke-direct {v2, v15, v9, v7}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$finalExit$1$1;-><init>(Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 1117
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    :cond_12
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 185
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v1, "entry"

    const/16 v10, 0x38

    move-object/from16 p3, v9

    const/4 v9, 0x0

    .line 200
    invoke-static {v13, v1, v3, v10, v9}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    .line 203
    filled-new-array {v15, v14, v0, v2}, [Ljava/lang/Object;

    move-result-object v10

    const v13, -0x21de6e89

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 p2, v8

    move v13, v9

    :goto_9
    const/4 v8, 0x4

    if-ge v9, v8, :cond_13

    .line 84
    aget-object v8, v10, v9

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v13, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1114
    :cond_13
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v13, :cond_14

    .line 1115
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_15

    .line 203
    :cond_14
    new-instance v8, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$7$1;

    invoke-direct {v8, v15, v0, v2, v14}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$7$1;-><init>(Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    .line 1117
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_15
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v13, v8

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 201
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$8;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$8;

    .line 216
    new-instance v2, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9;

    invoke-direct {v2, v12, v14}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/State;)V

    const v8, 0x40d8c1b6

    const/4 v9, 0x1

    invoke-static {v3, v8, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    shr-int/lit8 v2, v11, 0x3

    and-int/lit8 v2, v2, 0x70

    const v8, 0x36000

    or-int/2addr v2, v8

    and-int/lit16 v8, v11, 0x1c00

    or-int v18, v2, v8

    const/16 v19, 0x0

    move-object v11, v1

    move-object v12, v4

    move-object v2, v14

    move-object v14, v5

    move-object v8, v15

    move-object v15, v0

    move-object/from16 v17, v3

    .line 201
    invoke-static/range {v11 .. v19}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 233
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 234
    invoke-static {v2}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->AnimatedNavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 235
    invoke-virtual {v8, v1}, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->markTransitionComplete$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_a

    :cond_16
    move-object/from16 p2, v8

    move-object/from16 p3, v9

    .line 1856
    :cond_17
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-string v1, "dialog"

    .line 150
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 240
    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v1, :cond_18

    move-object/from16 v20, v0

    check-cast v20, Landroidx/navigation/compose/DialogNavigator;

    :cond_18
    move-object/from16 v0, v20

    if-nez v0, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_19
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance v12, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$dialogNavigator$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$dialogNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_b
    return-void

    .line 245
    :cond_1b
    sget v1, Landroidx/navigation/compose/DialogNavigator;->$stable:I

    invoke-static {v0, v3, v1}, Landroidx/navigation/compose/DialogHostKt;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_1d

    goto :goto_c

    :cond_1d
    new-instance v12, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$11;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$11;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_c
    return-void

    .line 137
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final AnimatedNavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v10, p9

    move/from16 v12, p12

    const-string v0, "navController"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startDestination"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x5a3331a

    move-object/from16 v3, p10

    .line 90
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_0

    .line 78
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_1

    .line 79
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    :goto_1
    and-int/lit8 v6, v12, 0x10

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v12, 0x20

    if-eqz v7, :cond_3

    .line 82
    sget-object v7, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$1;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$1;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v12, 0x40

    if-eqz v8, :cond_4

    .line 84
    sget-object v8, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$2;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$2;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    and-int/lit16 v9, v12, 0x80

    if-eqz v9, :cond_5

    const v9, -0x1c00001

    and-int v9, p11, v9

    move v11, v9

    move-object v9, v7

    goto :goto_5

    :cond_5
    move-object/from16 v9, p7

    move/from16 v11, p11

    :goto_5
    and-int/lit16 v13, v12, 0x100

    if-eqz v13, :cond_6

    const v13, -0xe000001

    and-int/2addr v11, v13

    move v13, v11

    move-object v11, v8

    goto :goto_6

    :cond_6
    move v13, v11

    move-object/from16 v11, p8

    .line 88
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, -0x1

    const-string v15, "com.android.settingslib.spa.framework.compose.AnimatedNavHost (AnimatedNavHost.kt:74)"

    .line 90
    invoke-static {v0, v13, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_7
    const v0, 0x607fb4c4

    .line 93
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v0, v14

    .line 69
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v0, v14

    .line 1114
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v0, :cond_8

    .line 1115
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_9

    .line 2550
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 57
    new-instance v14, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v14, v0, v2, v6}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v14}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v14

    .line 1117
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v14, Landroidx/navigation/NavGraph;

    and-int/lit16 v0, v13, 0x380

    or-int/lit8 v0, v0, 0x48

    and-int/lit16 v15, v13, 0x1c00

    or-int/2addr v0, v15

    shr-int/lit8 v13, v13, 0x3

    const v15, 0xe000

    and-int/2addr v15, v13

    or-int/2addr v0, v15

    const/high16 v15, 0x70000

    and-int/2addr v15, v13

    or-int/2addr v0, v15

    const/high16 v15, 0x380000

    and-int/2addr v15, v13

    or-int/2addr v0, v15

    const/high16 v15, 0x1c00000

    and-int/2addr v13, v15

    or-int v22, v0, v13

    const/16 v23, 0x0

    move-object/from16 v13, p0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v3

    .line 91
    invoke-static/range {v13 .. v23}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->AnimatedNavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_b

    goto :goto_7

    :cond_b
    new-instance v14, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$4;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_7
    return-void
.end method

.method private static final AnimatedNavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$AnimatedNavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->AnimatedNavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getEnterTransitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;>;"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->enterTransitions:Ljava/util/Map;

    return-object v0
.end method

.method public static final getExitTransitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;>;"
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->exitTransitions:Ljava/util/Map;

    return-object v0
.end method

.method public static final getPopEnterTransitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;>;"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->popEnterTransitions:Ljava/util/Map;

    return-object v0
.end method

.method public static final getPopExitTransitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;>;"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt;->popExitTransitions:Ljava/util/Map;

    return-object v0
.end method
