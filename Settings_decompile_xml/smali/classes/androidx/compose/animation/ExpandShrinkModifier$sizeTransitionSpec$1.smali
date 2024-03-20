.class final Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterExitTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/ExpandShrinkModifier;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/core/Transition$Segment<",
        "Landroidx/compose/animation/EnterExitState;",
        ">;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "Landroidx/compose/ui/unit/IntSize;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/ExpandShrinkModifier;


# direct methods
.method constructor <init>(Landroidx/compose/animation/ExpandShrinkModifier;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;->this$0:Landroidx/compose/animation/ExpandShrinkModifier;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/animation/core/Transition$Segment;)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;)",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    sget-object v1, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    invoke-interface {p1, v0, v1}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1110
    iget-object p0, p0, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;->this$0:Landroidx/compose/animation/ExpandShrinkModifier;

    invoke-virtual {p0}, Landroidx/compose/animation/ExpandShrinkModifier;->getExpand()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/ChangeSize;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/ChangeSize;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    goto :goto_0

    .line 1111
    :cond_0
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    invoke-interface {p1, v1, v0}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1112
    iget-object p0, p0, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;->this$0:Landroidx/compose/animation/ExpandShrinkModifier;

    invoke-virtual {p0}, Landroidx/compose/animation/ExpandShrinkModifier;->getShrink()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/ChangeSize;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/ChangeSize;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    goto :goto_0

    .line 1113
    :cond_1
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->access$getDefaultSizeAnimationSpec$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 1114
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->access$getDefaultSizeAnimationSpec$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1107
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;->invoke(Landroidx/compose/animation/core/Transition$Segment;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p0

    return-object p0
.end method
