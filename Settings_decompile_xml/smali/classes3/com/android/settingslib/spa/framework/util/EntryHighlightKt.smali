.class public final Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;
.super Ljava/lang/Object;
.source "EntryHighlight.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEntryHighlight.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntryHighlight.kt\ncom/android/settingslib/spa/framework/util/EntryHighlightKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,60:1\n76#2:61\n76#2:77\n50#3:62\n49#3:63\n460#3,13:89\n473#3,3:103\n1114#4,6:64\n67#5,6:70\n73#5:102\n77#5:107\n75#6:76\n76#6,11:78\n89#6:106\n76#7:108\n102#7,2:109\n76#7:111\n*S KotlinDebug\n*F\n+ 1 EntryHighlight.kt\ncom/android/settingslib/spa/framework/util/EntryHighlightKt\n*L\n38#1:61\n56#1:77\n41#1:62\n41#1:63\n56#1:89,13\n56#1:103,3\n41#1:64,6\n56#1:70,6\n56#1:102\n56#1:107\n56#1:76\n56#1:78,11\n56#1:106\n40#1:108\n40#1:109,2\n45#1:111\n*E\n"
.end annotation


# direct methods
.method public static final EntryHighlight(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "UiLayoutFn"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x113fd2c4

    move-object/from16 v3, p1

    .line 37
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v3, v1, 0xe

    const/4 v4, 0x2

    if-nez v3, :cond_1

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v1

    :goto_1
    and-int/lit8 v3, v12, 0xb

    if-ne v3, v4, :cond_3

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 59
    :cond_2
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 37
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "com.android.settingslib.spa.framework.util.EntryHighlight (EntryHighlight.kt:36)"

    invoke-static {v2, v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 38
    :cond_4
    invoke-static {}, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;->getLocalEntryDataProvider()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 76
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/settingslib/spa/framework/common/EntryData;

    const/4 v13, 0x0

    new-array v3, v13, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 39
    new-instance v6, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$entryIsHighlighted$1;

    invoke-direct {v6, v2}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$entryIsHighlighted$1;-><init>(Lcom/android/settingslib/spa/framework/common/EntryData;)V

    const/16 v8, 0x8

    const/4 v9, 0x6

    move-object v7, v11

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array v3, v13, [Ljava/lang/Object;

    .line 40
    sget-object v6, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$localHighlighted$2;->INSTANCE:Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$localHighlighted$2;

    const/16 v8, 0xc08

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x1e7b2b64

    .line 41
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v5

    .line 1114
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_5

    .line 1115
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_6

    .line 41
    :cond_5
    new-instance v5, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$1$1;

    invoke-direct {v5, v2, v3}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;)V

    .line 1117
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 41
    invoke-static {v5, v11, v13}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 47
    invoke-static {v3}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;->EntryHighlight$lambda$0(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_7

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v11, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v4

    goto :goto_3

    .line 48
    :cond_7
    sget-object v2, Lcom/android/settingslib/spa/framework/theme/SettingsTheme;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsTheme;

    invoke-virtual {v2, v11, v3}, Lcom/android/settingslib/spa/framework/theme/SettingsTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/framework/theme/SettingsColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/theme/SettingsColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v4

    :goto_3
    const/4 v14, 0x3

    const/16 v2, 0x1f4

    const/4 v6, 0x0

    .line 52
    invoke-static {v2, v13, v6, v3, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v15

    .line 53
    sget-object v16, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    const-wide/16 v17, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    .line 50
    invoke-static/range {v14 .. v20}, Landroidx/compose/animation/core/AnimationSpecKt;->repeatable-91I0pcU$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/RepeatableSpec;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/16 v10, 0xc

    move-wide v3, v4

    move-object v5, v2

    move-object v8, v11

    .line 45
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 56
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v2}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;->EntryHighlight$lambda$3(Landroidx/compose/runtime/State;)J

    move-result-wide v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x2bb5b5d7

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 71
    invoke-static {v3, v13, v11, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    const v4, -0x4ee9b9da

    .line 72
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 76
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 75
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 76
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    .line 76
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 76
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    .line 76
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 77
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 81
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    .line 88
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    .line 89
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 461
    :cond_8
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 91
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 463
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 465
    :cond_9
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 467
    :goto_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 468
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v8, v3, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 82
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v8, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 83
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v8, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v8, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 469
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 99
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v11, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    .line 100
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 73
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    and-int/lit8 v2, v12, 0xe

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 104
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 105
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 106
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 59
    :cond_a
    :goto_5
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance v3, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;

    invoke-direct {v3, v0, v1}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method

.method private static final EntryHighlight$lambda$0(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final EntryHighlight$lambda$1(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final EntryHighlight$lambda$3(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$EntryHighlight$lambda$1(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;->EntryHighlight$lambda$1(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
