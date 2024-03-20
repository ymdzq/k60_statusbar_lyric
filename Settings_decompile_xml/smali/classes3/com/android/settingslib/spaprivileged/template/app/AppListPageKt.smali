.class public final Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;
.super Ljava/lang/Object;
.source "AppListPage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppListPage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListPage.kt\ncom/android/settingslib/spaprivileged/template/app/AppListPageKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,94:1\n50#2:95\n49#2:96\n1114#3,6:97\n*S KotlinDebug\n*F\n+ 1 AppListPage.kt\ncom/android/settingslib/spaprivileged/template/app/AppListPageKt\n*L\n90#1:95\n90#1:96\n90#1:97,6\n*E\n"
.end annotation


# direct methods
.method public static final AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
            "TT;>;ZZZZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/android/settingslib/spaprivileged/template/app/AppListInput<",
            "TT;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p11

    move/from16 v14, p12

    const-string/jumbo v0, "title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listModel"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1e2d06c0

    move-object/from16 v2, p10

    .line 50
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    and-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_8

    move/from16 v4, p2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v4, p2

    :goto_6
    and-int/lit8 v5, v14, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v2, v2, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_b

    move/from16 v6, p3

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_7

    :cond_a
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v2, v7

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v6, p3

    :goto_9
    and-int/lit8 v7, v14, 0x10

    if-eqz v7, :cond_c

    or-int/lit16 v2, v2, 0x6000

    goto :goto_b

    :cond_c
    const v8, 0xe000

    and-int/2addr v8, v13

    if-nez v8, :cond_e

    move/from16 v8, p4

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_a

    :cond_d
    const/16 v9, 0x2000

    :goto_a
    or-int/2addr v2, v9

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v8, p4

    :goto_c
    and-int/lit8 v9, v14, 0x20

    if-eqz v9, :cond_f

    const/high16 v10, 0x30000

    or-int/2addr v2, v10

    goto :goto_e

    :cond_f
    const/high16 v10, 0x70000

    and-int/2addr v10, v13

    if-nez v10, :cond_11

    move/from16 v10, p5

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_10

    const/high16 v11, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v11, 0x10000

    :goto_d
    or-int/2addr v2, v11

    goto :goto_f

    :cond_11
    :goto_e
    move/from16 v10, p5

    :goto_f
    and-int/lit8 v11, v14, 0x40

    if-eqz v11, :cond_12

    const/high16 v16, 0x180000

    or-int v2, v2, v16

    move-object/from16 v0, p6

    goto :goto_11

    :cond_12
    const/high16 v16, 0x380000

    and-int v16, v13, v16

    move-object/from16 v0, p6

    if-nez v16, :cond_14

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v17, 0x80000

    :goto_10
    or-int v2, v2, v17

    :cond_14
    :goto_11
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_15

    const/high16 v17, 0xc00000

    or-int v2, v2, v17

    move-object/from16 v1, p7

    goto :goto_13

    :cond_15
    const/high16 v17, 0x1c00000

    and-int v17, v13, v17

    move-object/from16 v1, p7

    if-nez v17, :cond_17

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v17, 0x400000

    :goto_12
    or-int v2, v2, v17

    :cond_17
    :goto_13
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_18

    const/high16 v17, 0x6000000

    or-int v2, v2, v17

    move-object/from16 v4, p8

    goto :goto_15

    :cond_18
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    move-object/from16 v4, p8

    if-nez v17, :cond_1a

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_14

    :cond_19
    const/high16 v17, 0x2000000

    :goto_14
    or-int v2, v2, v17

    :cond_1a
    :goto_15
    and-int/lit16 v4, v14, 0x200

    if-eqz v4, :cond_1b

    const/high16 v17, 0x30000000

    or-int v2, v2, v17

    move-object/from16 v6, p9

    goto :goto_17

    :cond_1b
    const/high16 v17, 0x70000000

    and-int v17, v13, v17

    move-object/from16 v6, p9

    if-nez v17, :cond_1d

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_16
    or-int v2, v2, v17

    :cond_1d
    :goto_17
    const v17, 0x5b6db6db

    and-int v6, v2, v17

    const v8, 0x12492492

    if-ne v6, v8, :cond_1f

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_18

    .line 82
    :cond_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v6, v10

    move-object/from16 v10, p9

    goto/16 :goto_21

    :cond_1f
    :goto_18
    const/4 v6, 0x0

    if-eqz v3, :cond_20

    move/from16 v17, v6

    goto :goto_19

    :cond_20
    move/from16 v17, p2

    :goto_19
    if-eqz v5, :cond_21

    move v8, v6

    goto :goto_1a

    :cond_21
    move/from16 v8, p3

    :goto_1a
    if-eqz v7, :cond_22

    move/from16 v18, v6

    goto :goto_1b

    :cond_22
    move/from16 v18, p4

    :goto_1b
    if-eqz v9, :cond_23

    move/from16 v19, v6

    goto :goto_1c

    :cond_23
    move/from16 v19, v10

    :goto_1c
    if-eqz v11, :cond_24

    const/4 v3, 0x0

    move-object/from16 v20, v3

    goto :goto_1d

    :cond_24
    move-object/from16 v20, p6

    :goto_1d
    if-eqz v0, :cond_25

    .line 46
    sget-object v0, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;

    invoke-virtual {v0}, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->getLambda-1$packages__apps__MiuiSettingsLib__SpaPrivileged__android_common__MiuiSpaPrivilegedLib()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_1e

    :cond_25
    move-object/from16 v0, p7

    :goto_1e
    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;

    invoke-virtual {v1}, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->getLambda-2$packages__apps__MiuiSettingsLib__SpaPrivileged__android_common__MiuiSpaPrivilegedLib()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    goto :goto_1f

    :cond_26
    move-object/from16 v1, p8

    :goto_1f
    if-eqz v4, :cond_27

    sget-object v3, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;

    invoke-virtual {v3}, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->getLambda-3$packages__apps__MiuiSettingsLib__SpaPrivileged__android_common__MiuiSpaPrivilegedLib()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_20

    :cond_27
    move-object/from16 v21, p9

    :goto_20
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, -0x1

    const-string v4, "com.android.settingslib.spaprivileged.template.app.AppListPage (AppListPage.kt:38)"

    const v5, 0x1e2d06c0

    .line 50
    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_28
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 51
    sget-object v6, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$showSystem$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$showSystem$1;

    const/16 v7, 0xc08

    const/4 v9, 0x6

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v15

    move/from16 p7, v7

    move/from16 p8, v9

    invoke-static/range {p2 .. p8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 54
    new-instance v3, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;

    invoke-direct {v3, v8, v7, v0, v2}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;I)V

    const v4, -0x241af434

    const/4 v11, 0x1

    invoke-static {v15, v4, v11, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    .line 62
    new-instance v10, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;

    move/from16 v22, v2

    move-object v2, v10

    move/from16 v3, v19

    move/from16 v4, v22

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v23, v8

    move-object/from16 v8, p1

    move-object v9, v1

    move-object/from16 p10, v0

    move-object v0, v10

    move-object/from16 v10, v20

    move-object/from16 p8, v1

    move v1, v11

    move-object/from16 v11, v21

    invoke-direct/range {v2 .. v11}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;-><init>(ZIZZLandroidx/compose/runtime/MutableState;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    const v2, 0x5585b984

    invoke-static {v15, v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    and-int/lit8 v1, v22, 0xe

    or-int/lit16 v1, v1, 0x1b0

    const/4 v2, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v16

    move-object/from16 p4, v0

    move-object/from16 p5, v15

    move/from16 p6, v1

    move/from16 p7, v2

    .line 52
    invoke-static/range {p2 .. p7}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt;->SearchScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_29
    move-object/from16 v9, p8

    move-object/from16 v8, p10

    move/from16 v3, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v21

    move/from16 v4, v23

    .line 82
    :goto_21
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2a

    goto :goto_22

    :cond_2a
    new-instance v11, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v11

    move/from16 v11, p11

    move-object v13, v12

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;-><init>(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v15, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_22
    return-void
.end method

.method private static final ShowSystemAction(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, 0xfa230e

    .line 88
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spaprivileged.template.app.ShowSystemAction (AppListPage.kt:84)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 89
    sget v0, Lcom/android/settingslib/spaprivileged/R$string;->menu_hide_system:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settingslib/spaprivileged/R$string;->menu_show_system:I

    :goto_0
    const/4 v1, 0x0

    .line 90
    invoke-static {v0, p3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x1e7b2b64

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 1114
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    .line 1115
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 90
    :cond_2
    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$1$1;

    invoke-direct {v1, p2, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$1$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 1117
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x1000

    const/4 v7, 0x2

    move-object v1, p0

    move-object v5, p3

    .line 90
    invoke-interface/range {v1 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;->MenuItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$2;-><init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;ZLkotlin/jvm/functions/Function1;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1
    return-void
.end method

.method public static final synthetic access$ShowSystemAction(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->ShowSystemAction(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
