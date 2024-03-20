.class public final Landroidx/compose/ui/focus/FocusModifierKt;
.super Ljava/lang/Object;
.source "FocusModifier.kt"


# direct methods
.method public static final focusTarget(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Landroidx/compose/ui/focus/FocusTargetModifierNode;->Companion:Landroidx/compose/ui/focus/FocusTargetModifierNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode$Companion;->getFocusTargetModifierElement$ui_release()Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
