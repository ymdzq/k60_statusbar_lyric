.class public final Landroidx/compose/ui/node/ObserverNodeKt;
.super Ljava/lang/Object;
.source "ObserverNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObserverNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObserverNode.kt\nandroidx/compose/ui/node/ObserverNodeKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation


# direct methods
.method public static final observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/Modifier$Node;",
            ":",
            "Landroidx/compose/ui/node/ObserverNode;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getOwnerScope$ui_release()Landroidx/compose/ui/node/ModifierNodeOwnerScope;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/ObserverNode;

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ModifierNodeOwnerScope;-><init>(Landroidx/compose/ui/node/ObserverNode;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/Modifier$Node;->setOwnerScope$ui_release(Landroidx/compose/ui/node/ModifierNodeOwnerScope;)V

    .line 55
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    .line 57
    sget-object v1, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->Companion:Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;->getOnObserveReadsChanged$ui_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v0, v1, p1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
