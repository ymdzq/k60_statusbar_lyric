.class final Landroidx/compose/material3/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldTransitionScope\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,413:1\n939#2:414\n857#2,5:415\n939#2:420\n857#2,5:421\n939#2:426\n857#2,5:427\n852#2,5:443\n852#2,5:459\n69#3,2:432\n71#3:438\n74#3:442\n69#3,2:448\n71#3:454\n74#3:458\n36#4:434\n36#4:450\n1057#5,3:435\n1060#5,3:439\n1057#5,3:451\n1060#5,3:455\n76#6:464\n76#6:465\n76#6:466\n76#6:467\n76#6:468\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldTransitionScope\n*L\n300#1:414\n300#1:415,5\n311#1:420\n311#1:421,5\n339#1:426\n339#1:427,5\n350#1:443,5\n360#1:459,5\n350#1:432,2\n350#1:438\n350#1:442\n360#1:448,2\n360#1:454\n360#1:458\n350#1:434\n360#1:450\n350#1:435,3\n350#1:439,3\n360#1:451,3\n360#1:455,3\n300#1:464\n311#1:465\n339#1:466\n350#1:467\n360#1:468\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/TextFieldTransitionScope;

    invoke-direct {v0}, Landroidx/compose/material3/TextFieldTransitionScope;-><init>()V

    sput-object v0, Landroidx/compose/material3/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final Transition_DTcfvLk$lambda$7(Landroidx/compose/runtime/State;)J
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

.method private static final Transition_DTcfvLk$lambda$8(Landroidx/compose/runtime/State;)J
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


# virtual methods
.method public final Transition-DTcfvLk(Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/InputPhase;",
            "JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/InputPhase;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z",
            "Lkotlin/jvm/functions/Function7<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
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

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v5, p8

    move/from16 v6, p10

    const-string v0, "inputState"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentColor"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x3b5033c0

    move-object/from16 v1, p9

    .line 294
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v3, v6, 0xe

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    and-int/lit8 v9, v6, 0x70

    move-wide/from16 v14, p2

    if-nez v9, :cond_3

    invoke-interface {v1, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v3, v9

    :cond_3
    and-int/lit16 v9, v6, 0x380

    move-wide/from16 v12, p4

    if-nez v9, :cond_5

    invoke-interface {v1, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v3, v9

    :cond_5
    and-int/lit16 v9, v6, 0x1c00

    if-nez v9, :cond_7

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_4

    :cond_6
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v3, v9

    :cond_7
    const v17, 0xe000

    and-int v9, v6, v17

    if-nez v9, :cond_9

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v3, v9

    :cond_9
    const/high16 v18, 0x70000

    and-int v9, v6, v18

    if-nez v9, :cond_b

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v9, 0x10000

    :goto_6
    or-int/2addr v3, v9

    :cond_b
    const v9, 0x5b6db

    and-int/2addr v9, v3

    const v10, 0x12492

    if-ne v9, v10, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_7

    .line 373
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_18

    .line 294
    :cond_d
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    const/4 v11, -0x1

    if-eqz v9, :cond_e

    const-string v9, "androidx.compose.material3.TextFieldTransitionScope.Transition (TextFieldImpl.kt:280)"

    invoke-static {v0, v3, v11, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_e
    and-int/lit8 v0, v3, 0xe

    or-int/lit8 v0, v0, 0x30

    const-string v9, "TextFieldInputState"

    const/4 v10, 0x0

    .line 298
    invoke-static {v2, v9, v1, v0, v10}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 300
    sget-object v9, Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelProgress$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelProgress$2;

    const-string v16, "LabelProgress"

    const v4, -0x4fcbfb15

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 939
    sget-object v19, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v20

    const v4, -0x880d1ef

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 857
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/material3/InputPhase;

    const v4, 0xe53e412

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v23

    const-string v2, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:302)"

    if-eqz v23, :cond_f

    .line 304
    invoke-static {v4, v10, v11, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    sget-object v23, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v10, v23, v22

    const/16 v22, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x1

    const/high16 v25, 0x3f800000    # 1.0f

    if-eq v10, v4, :cond_12

    const/4 v4, 0x2

    if-eq v10, v4, :cond_11

    if-ne v10, v11, :cond_10

    goto :goto_8

    .line 307
    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_11
    move/from16 v4, v22

    goto :goto_9

    :cond_12
    :goto_8
    move/from16 v4, v25

    .line 304
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 858
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/InputPhase;

    const v11, 0xe53e412

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v24

    if-eqz v24, :cond_14

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 304
    invoke-static {v11, v5, v6, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_a

    :cond_14
    const/4 v6, -0x1

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v23, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_17

    const/4 v4, 0x2

    if-eq v2, v4, :cond_16

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15

    goto :goto_b

    .line 307
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_16
    const/4 v4, 0x3

    move/from16 v2, v22

    goto :goto_c

    :cond_17
    const/4 v4, 0x3

    :goto_b
    move/from16 v2, v25

    .line 304
    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 859
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v2, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/high16 v4, 0x30000

    move-object v9, v0

    move-object v12, v2

    move-object/from16 v13, v20

    move-object/from16 v14, v16

    move-object v15, v1

    move/from16 v16, v4

    .line 861
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 939
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 311
    sget-object v9, Landroidx/compose/material3/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    const-string v14, "PlaceholderOpacity"

    const v10, -0x4fcbfb15

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 939
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    const v10, -0x880d1ef

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 857
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/material3/InputPhase;

    const v11, 0x7b3bbb73

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_19

    const-string v12, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:330)"

    .line 332
    invoke-static {v11, v5, v6, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v23, v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_1c

    const/4 v12, 0x2

    if-eq v10, v12, :cond_1b

    const/4 v12, 0x3

    if-ne v10, v12, :cond_1a

    :goto_d
    move/from16 v10, v22

    goto :goto_e

    .line 335
    :cond_1a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1b
    if-eqz v8, :cond_1c

    goto :goto_d

    :cond_1c
    move/from16 v10, v25

    .line 332
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 858
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/InputPhase;

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v15

    if-eqz v15, :cond_1e

    const-string v15, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:330)"

    .line 332
    invoke-static {v11, v5, v6, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1e
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v23, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_21

    const/4 v12, 0x2

    if-eq v11, v12, :cond_20

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1f

    :goto_f
    move/from16 v11, v22

    goto :goto_10

    .line 335
    :cond_1f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_20
    if-eqz v8, :cond_21

    goto :goto_f

    :cond_21
    move/from16 v11, v25

    .line 332
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 859
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v12, v1, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v9, v0

    move-object v15, v1

    move/from16 v16, v4

    .line 861
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v20

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 939
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 339
    sget-object v9, Landroidx/compose/material3/TextFieldTransitionScope$Transition$prefixSuffixOpacity$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$prefixSuffixOpacity$2;

    const-string v14, "PrefixSuffixOpacity"

    const v10, -0x4fcbfb15

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 939
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    const v10, -0x880d1ef

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 857
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/material3/InputPhase;

    const v11, 0x58f519

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_23

    const-string v12, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:341)"

    .line 343
    invoke-static {v11, v5, v6, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v23, v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_26

    const/4 v12, 0x2

    if-eq v10, v12, :cond_25

    const/4 v12, 0x3

    if-ne v10, v12, :cond_24

    goto :goto_11

    .line 346
    :cond_24
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_25
    if-eqz v8, :cond_26

    move/from16 v10, v22

    goto :goto_12

    :cond_26
    :goto_11
    move/from16 v10, v25

    .line 343
    :goto_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_27
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 858
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/InputPhase;

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v15

    if-eqz v15, :cond_28

    const-string v15, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:341)"

    .line 343
    invoke-static {v11, v5, v6, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_28
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v23, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2b

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2a

    const/4 v12, 0x3

    if-ne v11, v12, :cond_29

    goto :goto_13

    .line 346
    :cond_29
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_2a
    if-eqz v8, :cond_2b

    goto :goto_14

    :cond_2b
    :goto_13
    move/from16 v22, v25

    .line 343
    :goto_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 859
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v12, v1, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v9, v0

    move-object v15, v1

    move/from16 v16, v4

    .line 861
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 939
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 350
    sget-object v9, Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelTextStyleColor$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelTextStyleColor$2;

    const-string v14, "LabelTextStyleColor"

    const v10, -0x739d657f

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 69
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/material3/InputPhase;

    const v11, -0x5780e90e

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    const-string v13, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:352)"

    if-eqz v12, :cond_2d

    .line 354
    invoke-static {v11, v5, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v23, v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2e

    move-wide/from16 v15, p2

    goto :goto_15

    :cond_2e
    move-wide/from16 v15, p4

    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v10

    const v12, 0x44faf204

    .line 70
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    .line 435
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_30

    .line 436
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v15, v12, :cond_31

    .line 71
    :cond_30
    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v12}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v12

    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Landroidx/compose/animation/core/TwoWayConverter;

    .line 439
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_31
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 70
    check-cast v15, Landroidx/compose/animation/core/TwoWayConverter;

    const v10, -0x880d1ef

    .line 74
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 852
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/material3/InputPhase;

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_32

    .line 354
    invoke-static {v11, v5, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_32
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v23, v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_33

    move-wide/from16 v21, p2

    goto :goto_16

    :cond_33
    move-wide/from16 v21, p4

    :goto_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    .line 853
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/InputPhase;

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_35

    .line 354
    invoke-static {v11, v5, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_35
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v23, v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_36

    move-wide/from16 v11, p2

    goto :goto_17

    :cond_36
    move-wide/from16 v11, p4

    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_37
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v11

    .line 445
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v6, v1, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const v16, 0x38000

    move-object v9, v0

    move-object v13, v15

    move-object v15, v1

    .line 447
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 360
    sget-object v6, Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelContentColor$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelContentColor$2;

    const-string v14, "LabelContentColor"

    and-int/lit16 v9, v3, 0x1c00

    or-int/lit16 v9, v9, 0x180

    const v10, -0x739d657f

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 69
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v10

    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x70

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v1, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v10

    const v11, 0x44faf204

    .line 70
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 451
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_38

    .line 452
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_39

    .line 71
    :cond_38
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v11}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v11

    invoke-interface {v11, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/compose/animation/core/TwoWayConverter;

    .line 455
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_39
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 70
    move-object v13, v12

    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    and-int/lit8 v10, v9, 0xe

    or-int/lit8 v10, v10, 0x40

    const/4 v11, 0x3

    shl-int/2addr v9, v11

    and-int/lit16 v11, v9, 0x380

    or-int/2addr v10, v11

    and-int/lit16 v11, v9, 0x1c00

    or-int/2addr v10, v11

    and-int v9, v9, v17

    or-int/2addr v9, v10

    const v10, -0x880d1ef

    .line 74
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 852
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    shr-int/lit8 v11, v9, 0x9

    and-int/lit8 v11, v11, 0x70

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v10, v1, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 853
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v12, v1, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 461
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    shr-int/lit8 v15, v9, 0x3

    and-int/lit8 v15, v15, 0x70

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v12, v1, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 v6, v9, 0xe

    shl-int/lit8 v15, v9, 0x9

    and-int v15, v15, v17

    or-int/2addr v6, v15

    shl-int/lit8 v9, v9, 0x6

    and-int v9, v9, v18

    or-int v16, v6, v9

    move-object v9, v0

    move-object v15, v1

    .line 463
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 367
    invoke-static {v2}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 368
    invoke-static {v5}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$7(Landroidx/compose/runtime/State;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v11

    .line 369
    invoke-static {v0}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$8(Landroidx/compose/runtime/State;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    .line 370
    invoke-static/range {v20 .. v20}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 371
    invoke-static {v4}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    and-int v0, v3, v18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v9, p8

    .line 366
    invoke-interface/range {v9 .. v16}, Lkotlin/jvm/functions/Function7;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 373
    :cond_3a
    :goto_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_3b

    goto :goto_19

    :cond_3b
    new-instance v12, Landroidx/compose/material3/TextFieldTransitionScope$Transition$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TextFieldTransitionScope$Transition$1;-><init>(Landroidx/compose/material3/TextFieldTransitionScope;Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_19
    return-void
.end method
