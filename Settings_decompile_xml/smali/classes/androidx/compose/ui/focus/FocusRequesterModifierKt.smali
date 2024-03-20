.class public final Landroidx/compose/ui/focus/FocusRequesterModifierKt;
.super Ljava/lang/Object;
.source "FocusRequesterModifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequesterModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierKt\n+ 2 ModifierNodeElement.kt\nandroidx/compose/ui/node/ModifierNodeElementKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,80:1\n114#2:81\n117#2:83\n135#3:82\n*S KotlinDebug\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierKt\n*L\n51#1:81\n51#1:83\n51#1:82\n*E\n"
.end annotation


# direct methods
.method public static final focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRequester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 114
    :goto_0
    new-instance v1, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;

    invoke-direct {v1, p1, v0, p1, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;)V

    .line 49
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
