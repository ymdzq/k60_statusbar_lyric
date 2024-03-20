.class public interface abstract Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
.super Ljava/lang/Object;
.source "NodeCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HitTestSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Landroidx/compose/ui/node/DelegatableNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract childHitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TN;>;ZZ)V"
        }
    .end annotation
.end method

.method public abstract entityType-OLwlOKw()I
.end method

.method public abstract interceptOutOfBoundsChildEvents(Landroidx/compose/ui/node/DelegatableNode;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation
.end method

.method public abstract shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z
.end method
