.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,461:1\n62#2,5:462\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1\n*L\n224#1:462,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $draggedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1;->$draggedInteraction:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1;->$draggedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 62
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
