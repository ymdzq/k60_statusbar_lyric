.class public final Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;
.super Ljava/lang/Object;
.source "SettingsAlertDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsAlertDialog.kt\ncom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,119:1\n25#2:120\n1114#3,6:121\n76#4:127\n154#5:128\n88#6:129\n1#7:130\n76#8:131\n102#8,2:132\n*S KotlinDebug\n*F\n+ 1 SettingsAlertDialog.kt\ncom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt\n*L\n60#1:120\n60#1:121,6\n85#1:127\n90#1:128\n90#1:129\n59#1:131\n59#1:132,2\n*E\n"
.end annotation


# direct methods
.method private static final Button(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x6975dac9

    move-object/from16 v4, p2

    .line 109
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v4, v2, 0xe

    if-nez v4, :cond_1

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, v2, 0x70

    if-nez v5, :cond_3

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit8 v4, v4, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 118
    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v15

    goto :goto_4

    .line 109
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    const-string v5, "com.android.settingslib.spa.widget.dialog.Button (SettingsAlertDialog.kt:108)"

    invoke-static {v3, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 110
    :cond_6
    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$1;

    invoke-direct {v4, v0, v1}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 115
    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$2;

    invoke-direct {v3, v1}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$2;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const v13, 0x44cd096c

    const/4 v14, 0x1

    invoke-static {v15, v13, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    const/high16 v3, 0x30000000

    const/16 v16, 0x1fe

    move-object v14, v15

    move-object/from16 v17, v15

    move v15, v3

    .line 110
    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 118
    :cond_7
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$3;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$3;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method private static final SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;",
            "Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;",
            "Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;",
            "Ljava/lang/String;",
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    const v0, -0x44471ac7

    move-object/from16 v7, p5

    .line 84
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v7, v6, 0xe

    const/4 v8, 0x2

    if-nez v7, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    and-int/lit8 v9, v6, 0x70

    if-nez v9, :cond_3

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :cond_3
    and-int/lit16 v9, v6, 0x380

    if-nez v9, :cond_5

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v7, v9

    :cond_5
    and-int/lit16 v9, v6, 0x1c00

    if-nez v9, :cond_7

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_4

    :cond_6
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v7, v9

    :cond_7
    const v9, 0xe000

    and-int/2addr v9, v6

    if-nez v9, :cond_9

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v7, v9

    :cond_9
    const v9, 0xb6db

    and-int/2addr v9, v7

    const/16 v10, 0x2492

    if-ne v9, v10, :cond_b

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_6

    .line 106
    :cond_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v0, v13

    goto/16 :goto_a

    .line 84
    :cond_b
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, -0x1

    const-string v10, "com.android.settingslib.spa.widget.dialog.SettingsAlertDialog (SettingsAlertDialog.kt:78)"

    invoke-static {v0, v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 85
    :cond_c
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Landroid/content/res/Configuration;

    .line 87
    new-instance v9, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$1;

    invoke-direct {v9, v1}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$1;-><init>(Ljava/lang/Object;)V

    .line 88
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v8, :cond_d

    .line 90
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v10

    .line 88
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 90
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_7

    .line 92
    :cond_d
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_7
    const/4 v8, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_e

    .line 95
    new-instance v11, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$2$1;

    invoke-direct {v11, v1, v3, v7}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$2$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;I)V

    const v12, 0x71f4d236

    invoke-static {v13, v12, v10, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    move-object v12, v11

    goto :goto_8

    :cond_e
    move-object v12, v8

    :goto_8
    if-eqz v4, :cond_f

    .line 96
    new-instance v11, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$3$1;

    invoke-direct {v11, v4}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$3$1;-><init>(Ljava/lang/String;)V

    const v14, 0x5f56368e

    invoke-static {v13, v14, v10, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    move-object/from16 v25, v11

    goto :goto_9

    :cond_f
    move-object/from16 v25, v8

    :goto_9
    if-eqz v5, :cond_10

    .line 98
    new-instance v8, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$4$1;

    invoke-direct {v8, v5, v7}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$4$1;-><init>(Lkotlin/jvm/functions/Function2;I)V

    const v11, 0x49a76435

    invoke-static {v13, v11, v10, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    :cond_10
    move-object/from16 v29, v8

    .line 104
    new-instance v14, Landroidx/compose/ui/window/DialogProperties;

    move-object/from16 v24, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x17

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    new-instance v8, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;

    invoke-direct {v8, v2, v1, v7}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;I)V

    const v7, -0x14df1e7f

    invoke-static {v13, v7, v10, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x30

    const/16 v27, 0xc00

    const/16 v28, 0x1f90

    move-object v7, v9

    move-object v9, v0

    move-object v10, v12

    move-object/from16 v12, v25

    move-object v0, v13

    move-object/from16 v13, v29

    move-object/from16 v25, v0

    .line 86
    invoke-static/range {v7 .. v28}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 106
    :cond_11
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-nez v7, :cond_12

    goto :goto_b

    :cond_12
    new-instance v8, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$6;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$6;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_b
    return-void
.end method

.method public static final synthetic access$Button(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->Button(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$rememberAlertDialogPresenter$lambda$1(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter$lambda$1(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;",
            "Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;"
        }
    .end annotation

    move-object/from16 v7, p4

    move/from16 v8, p5

    const v0, -0x754fb38d

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, p6, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, p0

    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, p1

    :goto_1
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p2

    :goto_2
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p3

    .line 57
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.widget.dialog.rememberAlertDialogPresenter (SettingsAlertDialog.kt:52)"

    .line 58
    invoke-static {v0, v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    sget-object v3, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$openDialog$2;->INSTANCE:Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$openDialog$2;

    const/16 v5, 0xc08

    const/4 v6, 0x6

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    const v1, -0x1d58f75c

    .line 60
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 61
    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    invoke-direct {v1, v0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1117
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_5
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 60
    move-object v13, v1

    check-cast v13, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    .line 71
    invoke-static {v0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter$lambda$0(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_6

    shl-int/lit8 v0, v8, 0x3

    and-int/lit8 v1, v0, 0x70

    or-int/lit8 v1, v1, 0x6

    and-int/lit16 v2, v0, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v0, v2

    or-int v6, v1, v0

    move-object v0, v13

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v13
.end method

.method private static final rememberAlertDialogPresenter$lambda$0(Landroidx/compose/runtime/MutableState;)Z
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

.method private static final rememberAlertDialogPresenter$lambda$1(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
