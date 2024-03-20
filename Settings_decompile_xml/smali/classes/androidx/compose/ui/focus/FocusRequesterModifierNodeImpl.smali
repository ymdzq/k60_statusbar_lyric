.class final Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusRequesterModifier.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequesterModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierNodeImpl\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,80:1\n728#2,2:81\n735#2,2:83\n*S KotlinDebug\n*F\n+ 1 FocusRequesterModifier.kt\nandroidx/compose/ui/focus/FocusRequesterModifierNodeImpl\n*L\n72#1:81,2\n76#1:83,2\n*E\n"
.end annotation


# instance fields
.field private focusRequester:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1

    const-string v0, "focusRequester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public onAttach()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onAttach()V

    .line 72
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 728
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 735
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    return-void
.end method

.method public final setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method
