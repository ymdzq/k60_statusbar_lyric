.class final Landroidx/compose/animation/ExpandShrinkModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "EnterExitTransition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/ExpandShrinkModifier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterExitTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/ExpandShrinkModifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,1180:1\n1#2:1181\n79#3:1182\n*S KotlinDebug\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/ExpandShrinkModifier\n*L\n1152#1:1182\n*E\n"
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private currentAlignment:Landroidx/compose/ui/Alignment;

.field private final expand:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation
.end field

.field private final offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private final shrink:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeTransitionSpec:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/ui/Alignment;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sizeAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "offsetAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expand"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shrink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 1098
    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1099
    iput-object p2, p0, Landroidx/compose/animation/ExpandShrinkModifier;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1101
    iput-object p3, p0, Landroidx/compose/animation/ExpandShrinkModifier;->expand:Landroidx/compose/runtime/State;

    .line 1102
    iput-object p4, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    .line 1103
    iput-object p5, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    .line 1107
    new-instance p1, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;-><init>(Landroidx/compose/animation/ExpandShrinkModifier;)V

    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeTransitionSpec:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getCurrentAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 1105
    iget-object p0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getExpand()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation

    .line 1101
    iget-object p0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->expand:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public final getShrink()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation

    .line 1102
    iget-object p0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15

    move-object v0, p0

    const-string v1, "$this$measure"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "measurable"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 1163
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v6

    .line 1164
    iget-object v1, v0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v3, v0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeTransitionSpec:Lkotlin/jvm/functions/Function1;

    new-instance v5, Landroidx/compose/animation/ExpandShrinkModifier$measure$currentSize$1;

    invoke-direct {v5, p0, v6, v7}, Landroidx/compose/animation/ExpandShrinkModifier$measure$currentSize$1;-><init>(Landroidx/compose/animation/ExpandShrinkModifier;J)V

    invoke-virtual {v1, v3, v5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v11

    .line 1168
    iget-object v1, v0, Landroidx/compose/animation/ExpandShrinkModifier;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    sget-object v3, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$1;->INSTANCE:Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$1;

    new-instance v5, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;

    invoke-direct {v5, p0, v6, v7}, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;-><init>(Landroidx/compose/animation/ExpandShrinkModifier;J)V

    invoke-virtual {v1, v3, v5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 1170
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v13

    .line 1173
    iget-object v5, v0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    if-eqz v5, :cond_0

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-wide v8, v11

    invoke-interface/range {v5 .. v10}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v0

    goto :goto_0

    .line 1174
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    .line 1175
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    const/4 v9, 0x0

    new-instance v10, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;

    move-object v3, v10

    move-wide v7, v13

    invoke-direct/range {v3 .. v8}, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;JJ)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v3, v0

    move v4, v1

    move-object v5, v9

    move-object v6, v10

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentAlignment(Landroidx/compose/ui/Alignment;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    return-void
.end method

.method public final sizeByState-Uzc_VyU(Landroidx/compose/animation/EnterExitState;J)J
    .locals 4

    const-string/jumbo v0, "targetState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->expand:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/ChangeSize;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/animation/ChangeSize;->getSize()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    .line 1119
    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/ChangeSize;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/ChangeSize;->getSize()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, p2

    .line 1121
    :goto_1
    sget-object p0, Landroidx/compose/animation/ExpandShrinkModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    move-wide p2, v2

    goto :goto_2

    .line 1124
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    move-wide p2, v0

    :cond_4
    :goto_2
    return-wide p2
.end method

.method public final targetOffsetByState-oFUgxo0(Landroidx/compose/animation/EnterExitState;J)J
    .locals 10

    const-string/jumbo v0, "targetState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    if-nez v0, :cond_0

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p0

    goto/16 :goto_0

    .line 1135
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p0

    goto/16 :goto_0

    .line 1136
    :cond_1
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    iget-object v1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p0

    goto/16 :goto_0

    .line 1137
    :cond_2
    sget-object v0, Landroidx/compose/animation/ExpandShrinkModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1140
    iget-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/ChangeSize;

    if-eqz p1, :cond_3

    .line 1141
    invoke-virtual {p1}, Landroidx/compose/animation/ChangeSize;->getSize()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v6

    .line 1142
    iget-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/Alignment;

    .line 1145
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-wide v1, p2

    move-wide v3, v6

    move-object v5, p1

    .line 1142
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v8

    .line 1147
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p0

    .line 79
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    sub-int/2addr p3, p0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    goto :goto_0

    .line 1153
    :cond_3
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p0

    goto :goto_0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 1139
    :cond_5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p0

    goto :goto_0

    .line 1138
    :cond_6
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
