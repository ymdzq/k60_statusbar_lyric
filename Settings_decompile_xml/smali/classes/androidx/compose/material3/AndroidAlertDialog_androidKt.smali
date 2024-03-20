.class public final Landroidx/compose/material3/AndroidAlertDialog_androidKt;
.super Ljava/lang/Object;
.source "AndroidAlertDialog.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAlertDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAlertDialog.android.kt\nandroidx/compose/material3/AndroidAlertDialog_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,193:1\n154#2:194\n154#2:195\n*S KotlinDebug\n*F\n+ 1 AndroidAlertDialog.android.kt\nandroidx/compose/material3/AndroidAlertDialog_androidKt\n*L\n191#1:194\n192#1:195\n*E\n"
.end annotation


# static fields
.field private static final ButtonsCrossAxisSpacing:F

.field private static final ButtonsMainAxisSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 191
    sput v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->ButtonsMainAxisSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 192
    sput v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->ButtonsCrossAxisSpacing:F

    return-void
.end method

.method public static final AlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p5

    const-string/jumbo v0, "onDismissRequest"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3c82c3b

    move-object/from16 v1, p4

    .line 151
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v8, 0xe

    if-nez v1, :cond_2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v8, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v5, v8, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_5

    :cond_7
    const/16 v10, 0x80

    :goto_5
    or-int/2addr v1, v10

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v5, p2

    :goto_7
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v10, v8, 0x1c00

    if-nez v10, :cond_b

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_8

    :cond_a
    const/16 v10, 0x400

    :goto_8
    or-int/2addr v1, v10

    :cond_b
    :goto_9
    and-int/lit16 v10, v1, 0x16db

    const/16 v11, 0x492

    if-ne v10, v11, :cond_d

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_a

    .line 166
    :cond_c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move-object v3, v5

    goto :goto_d

    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    .line 148
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v2

    goto :goto_b

    :cond_e
    move-object v10, v3

    :goto_b
    if-eqz v4, :cond_f

    .line 149
    new-instance v2, Landroidx/compose/ui/window/DialogProperties;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_c

    :cond_f
    move-object v11, v5

    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.AlertDialog (AndroidAlertDialog.android.kt:145)"

    .line 151
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 155
    :cond_10
    new-instance v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$3;

    invoke-direct {v0, v10, v7, v1}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;I)V

    const v2, 0x31114dc4

    const/4 v3, 0x1

    invoke-static {v9, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0x180

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v4, v0, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v9

    .line 152
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    move-object v2, v10

    move-object v3, v11

    .line 166
    :goto_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-nez v9, :cond_12

    goto :goto_e

    :cond_12
    new-instance v10, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$4;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_e
    return-void
.end method

.method public static final AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
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
            "Lkotlin/jvm/functions/Function2<",
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
            "Landroidx/compose/ui/graphics/Shape;",
            "JJJJF",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v15, p19

    move/from16 v13, p20

    move/from16 v14, p21

    const-string/jumbo v2, "onDismissRequest"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "confirmButton"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x7c0ed530

    move-object/from16 v3, p18

    .line 92
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v6, v14, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v15, 0x70

    if-nez v6, :cond_5

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v14, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v15, 0x380

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v3, v3, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v12, p2

    :goto_6
    and-int/lit8 v16, v14, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v15, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v3, v3, v19

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v4, p3

    :goto_9
    and-int/lit8 v19, v14, 0x10

    if-eqz v19, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v5, p4

    goto :goto_b

    :cond_c
    const v20, 0xe000

    and-int v20, v15, v20

    move-object/from16 v5, p4

    if-nez v20, :cond_e

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_a

    :cond_d
    const/16 v21, 0x2000

    :goto_a
    or-int v3, v3, v21

    :cond_e
    :goto_b
    and-int/lit8 v21, v14, 0x20

    if-eqz v21, :cond_f

    const/high16 v22, 0x30000

    or-int v3, v3, v22

    move-object/from16 v7, p5

    goto :goto_d

    :cond_f
    const/high16 v22, 0x70000

    and-int v22, v15, v22

    move-object/from16 v7, p5

    if-nez v22, :cond_11

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v23, 0x10000

    :goto_c
    or-int v3, v3, v23

    :cond_11
    :goto_d
    and-int/lit8 v23, v14, 0x40

    if-eqz v23, :cond_12

    const/high16 v24, 0x180000

    or-int v3, v3, v24

    move-object/from16 v8, p6

    goto :goto_f

    :cond_12
    const/high16 v24, 0x380000

    and-int v24, v15, v24

    move-object/from16 v8, p6

    if-nez v24, :cond_14

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v25, 0x80000

    :goto_e
    or-int v3, v3, v25

    :cond_14
    :goto_f
    const/high16 v25, 0x1c00000

    and-int v25, v15, v25

    if-nez v25, :cond_17

    and-int/lit16 v9, v14, 0x80

    if-nez v9, :cond_15

    move-object/from16 v9, p7

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/high16 v26, 0x800000

    goto :goto_10

    :cond_15
    move-object/from16 v9, p7

    :cond_16
    const/high16 v26, 0x400000

    :goto_10
    or-int v3, v3, v26

    goto :goto_11

    :cond_17
    move-object/from16 v9, p7

    :goto_11
    const/high16 v26, 0xe000000

    and-int v26, v15, v26

    if-nez v26, :cond_19

    and-int/lit16 v10, v14, 0x100

    move/from16 v27, v3

    move-wide/from16 v2, p8

    if-nez v10, :cond_18

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v28

    if-eqz v28, :cond_18

    const/high16 v28, 0x4000000

    goto :goto_12

    :cond_18
    const/high16 v28, 0x2000000

    :goto_12
    or-int v27, v27, v28

    goto :goto_13

    :cond_19
    move/from16 v27, v3

    move-wide/from16 v2, p8

    :goto_13
    const/high16 v28, 0x70000000

    and-int v28, v15, v28

    if-nez v28, :cond_1b

    and-int/lit16 v10, v14, 0x200

    move-wide/from16 v0, p10

    if-nez v10, :cond_1a

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/high16 v10, 0x20000000

    goto :goto_14

    :cond_1a
    const/high16 v10, 0x10000000

    :goto_14
    or-int v27, v27, v10

    goto :goto_15

    :cond_1b
    move-wide/from16 v0, p10

    :goto_15
    and-int/lit8 v10, v13, 0xe

    if-nez v10, :cond_1d

    and-int/lit16 v10, v14, 0x400

    move-wide/from16 v0, p12

    if-nez v10, :cond_1c

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/16 v20, 0x4

    goto :goto_16

    :cond_1c
    const/16 v20, 0x2

    :goto_16
    or-int v10, v13, v20

    goto :goto_17

    :cond_1d
    move-wide/from16 v0, p12

    move v10, v13

    :goto_17
    and-int/lit8 v20, v13, 0x70

    if-nez v20, :cond_20

    and-int/lit16 v0, v14, 0x800

    if-nez v0, :cond_1e

    move-wide/from16 v0, p14

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_1f

    const/16 v22, 0x20

    goto :goto_18

    :cond_1e
    move-wide/from16 v0, p14

    :cond_1f
    const/16 v22, 0x10

    :goto_18
    or-int v10, v10, v22

    goto :goto_19

    :cond_20
    move-wide/from16 v0, p14

    :goto_19
    and-int/lit16 v0, v14, 0x1000

    if-eqz v0, :cond_21

    or-int/lit16 v10, v10, 0x180

    goto :goto_1b

    :cond_21
    and-int/lit16 v1, v13, 0x380

    if-nez v1, :cond_23

    move/from16 v1, p16

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v26, 0x100

    goto :goto_1a

    :cond_22
    const/16 v26, 0x80

    :goto_1a
    or-int v10, v10, v26

    goto :goto_1c

    :cond_23
    :goto_1b
    move/from16 v1, p16

    :goto_1c
    and-int/lit16 v1, v14, 0x2000

    if-eqz v1, :cond_24

    or-int/lit16 v10, v10, 0xc00

    goto :goto_1e

    :cond_24
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_26

    move-object/from16 v2, p17

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_1d

    :cond_25
    move/from16 v17, v18

    :goto_1d
    or-int v10, v10, v17

    goto :goto_1f

    :cond_26
    :goto_1e
    move-object/from16 v2, p17

    :goto_1f
    const v3, 0x5b6db6db

    and-int v3, v27, v3

    const v2, 0x12492492

    if-ne v3, v2, :cond_28

    and-int/lit16 v2, v10, 0x16db

    const/16 v3, 0x492

    if-ne v2, v3, :cond_28

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_20

    .line 119
    :cond_27
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v21, v5

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v3, v12

    move-wide/from16 v9, p8

    move-object v5, v4

    move-object v4, v11

    move-wide/from16 v11, p10

    goto/16 :goto_2b

    .line 92
    :cond_28
    :goto_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const v3, -0xe000001

    const v17, -0x1c00001

    if-eqz v2, :cond_2f

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_21

    .line 91
    :cond_29
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_2a

    and-int v27, v27, v17

    :cond_2a
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_2b

    and-int v27, v27, v3

    :cond_2b
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_2c

    const v0, -0x70000001

    and-int v27, v27, v0

    :cond_2c
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_2d

    and-int/lit8 v10, v10, -0xf

    :cond_2d
    and-int/lit16 v0, v14, 0x800

    if-eqz v0, :cond_2e

    and-int/lit8 v10, v10, -0x71

    :cond_2e
    move-wide/from16 v25, p8

    move-wide/from16 v29, p10

    move-wide/from16 v31, p12

    move-wide/from16 v33, p14

    move-object/from16 v35, p17

    move-object v1, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object v0, v12

    move v12, v10

    move/from16 v10, v27

    move/from16 v27, p16

    goto/16 :goto_2a

    :cond_2f
    :goto_21
    if-eqz v6, :cond_30

    .line 80
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v2

    :cond_30
    const/4 v2, 0x0

    if-eqz v16, :cond_31

    move-object v4, v2

    :cond_31
    if-eqz v19, :cond_32

    move-object v5, v2

    :cond_32
    if-eqz v21, :cond_33

    move-object v7, v2

    :cond_33
    if-eqz v23, :cond_34

    goto :goto_22

    :cond_34
    move-object v2, v8

    :goto_22
    and-int/lit16 v6, v14, 0x80

    const/4 v8, 0x6

    if-eqz v6, :cond_35

    .line 85
    sget-object v6, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v6, v11, v8}, Landroidx/compose/material3/AlertDialogDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    and-int v27, v27, v17

    goto :goto_23

    :cond_35
    move-object v6, v9

    :goto_23
    and-int/lit16 v9, v14, 0x100

    if-eqz v9, :cond_36

    .line 86
    sget-object v9, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v9, v11, v8}, Landroidx/compose/material3/AlertDialogDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    and-int v27, v27, v3

    goto :goto_24

    :cond_36
    move-wide/from16 v16, p8

    :goto_24
    and-int/lit16 v3, v14, 0x200

    if-eqz v3, :cond_37

    .line 87
    sget-object v3, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v3, v11, v8}, Landroidx/compose/material3/AlertDialogDefaults;->getIconContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    const v3, -0x70000001

    and-int v3, v27, v3

    move/from16 v27, v3

    goto :goto_25

    :cond_37
    move-wide/from16 v18, p10

    :goto_25
    and-int/lit16 v3, v14, 0x400

    if-eqz v3, :cond_38

    .line 88
    sget-object v3, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v3, v11, v8}, Landroidx/compose/material3/AlertDialogDefaults;->getTitleContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    and-int/lit8 v10, v10, -0xf

    goto :goto_26

    :cond_38
    move-wide/from16 v20, p12

    :goto_26
    and-int/lit16 v3, v14, 0x800

    if-eqz v3, :cond_39

    .line 89
    sget-object v3, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v3, v11, v8}, Landroidx/compose/material3/AlertDialogDefaults;->getTextContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int/lit8 v3, v10, -0x71

    move v10, v3

    goto :goto_27

    :cond_39
    move-wide/from16 v8, p14

    :goto_27
    if-eqz v0, :cond_3a

    .line 90
    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/AlertDialogDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v0

    goto :goto_28

    :cond_3a
    move/from16 v0, p16

    :goto_28
    if-eqz v1, :cond_3b

    .line 91
    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x7

    const/16 v25, 0x0

    move-object/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v22

    move-object/from16 p5, v23

    move/from16 p6, v24

    move-object/from16 p7, v25

    invoke-direct/range {p2 .. p7}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v35, v1

    goto :goto_29

    :cond_3b
    move-object/from16 v35, p17

    :goto_29
    move-object/from16 v23, v2

    move-object v1, v4

    move-object/from16 v24, v6

    move-object/from16 v22, v7

    move-wide/from16 v33, v8

    move-wide/from16 v25, v16

    move-wide/from16 v29, v18

    move-wide/from16 v31, v20

    move-object/from16 v21, v5

    move/from16 v40, v27

    move/from16 v27, v0

    move-object v0, v12

    move v12, v10

    move/from16 v10, v40

    :goto_2a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "androidx.compose.material3.AlertDialog (AndroidAlertDialog.android.kt:76)"

    const v3, -0x7c0ed530

    .line 92
    invoke-static {v3, v10, v12, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3c
    new-instance v8, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;

    move-object v2, v8

    move-object v3, v0

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 p9, v0

    move-object v0, v8

    move-wide/from16 v8, v25

    move/from16 v28, v10

    move/from16 v10, v27

    move-object/from16 v36, v11

    move/from16 v37, v12

    move-wide/from16 v11, v29

    move-wide/from16 v13, v31

    move-wide/from16 v15, v33

    move/from16 v17, v28

    move/from16 v18, v37

    move-object/from16 v19, v1

    move-object/from16 v20, p1

    invoke-direct/range {v2 .. v20}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJIILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x2c34a346

    const/4 v3, 0x1

    move-object/from16 v4, v36

    invoke-static {v4, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    and-int/lit8 v2, v28, 0xe

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v28, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shr-int/lit8 v3, v37, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, p9

    move-object/from16 p4, v35

    move-object/from16 p5, v0

    move-object/from16 p6, v4

    move/from16 p7, v2

    move/from16 p8, v3

    invoke-static/range {p2 .. p8}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3d
    move-object/from16 v3, p9

    move-object v5, v1

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-wide/from16 v9, v25

    move/from16 v17, v27

    move-wide/from16 v11, v29

    move-wide/from16 v13, v31

    move-wide/from16 v15, v33

    move-object/from16 v18, v35

    .line 119
    :goto_2b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-nez v4, :cond_3e

    goto :goto_2c

    :cond_3e
    new-instance v2, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$2;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v38, v2

    move-object/from16 v2, p1

    move-object/from16 v39, v4

    move-object v4, v5

    move-object/from16 v5, v21

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;III)V

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2c
    return-void
.end method

.method public static final synthetic access$getButtonsCrossAxisSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->ButtonsCrossAxisSpacing:F

    return v0
.end method

.method public static final synthetic access$getButtonsMainAxisSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->ButtonsMainAxisSpacing:F

    return v0
.end method
