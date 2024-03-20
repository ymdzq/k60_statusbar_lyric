.class public final Landroidx/compose/ui/semantics/SemanticsNode$fakeSemanticsNode$fakeNode$1;
.super Landroidx/compose/ui/Modifier$Node;
.source "SemanticsNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/semantics/SemanticsNode;->fakeSemanticsNode-ypyhhiA(Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 393
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setMergingSemanticsOfDescendants(Z)V

    .line 395
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setClearingSemantics(Z)V

    .line 396
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iput-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode$fakeSemanticsNode$fakeNode$1;->semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-void
.end method


# virtual methods
.method public getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 0

    .line 393
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode$fakeSemanticsNode$fakeNode$1;->semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object p0
.end method
