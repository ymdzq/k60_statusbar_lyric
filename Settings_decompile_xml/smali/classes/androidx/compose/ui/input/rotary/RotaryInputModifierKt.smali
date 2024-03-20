.class public final Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;
.super Ljava/lang/Object;
.source "RotaryInputModifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotaryInputModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotaryInputModifier.kt\nandroidx/compose/ui/input/rotary/RotaryInputModifierKt\n+ 2 ModifierNodeElement.kt\nandroidx/compose/ui/node/ModifierNodeElementKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,96:1\n114#2:97\n117#2:99\n114#2:100\n117#2:102\n135#3:98\n135#3:101\n*S KotlinDebug\n*F\n+ 1 RotaryInputModifier.kt\nandroidx/compose/ui/input/rotary/RotaryInputModifierKt\n*L\n47#1:97\n47#1:99\n84#1:100\n84#1:102\n47#1:98\n84#1:101\n*E\n"
.end annotation


# direct methods
.method public static final onRotaryScrollEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onRotaryScrollEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onRotaryScrollEvent$$inlined$modifierElementOf$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onRotaryScrollEvent$$inlined$modifierElementOf$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 114
    :goto_0
    new-instance v1, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onRotaryScrollEvent$$inlined$modifierElementOf$2;

    invoke-direct {v1, p1, v0, p1, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onRotaryScrollEvent$$inlined$modifierElementOf$2;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 45
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
