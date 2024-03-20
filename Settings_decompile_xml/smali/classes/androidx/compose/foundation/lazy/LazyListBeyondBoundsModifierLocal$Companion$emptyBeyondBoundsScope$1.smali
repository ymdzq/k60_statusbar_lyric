.class public final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$Companion$emptyBeyondBoundsScope$1;
.super Ljava/lang/Object;
.source "LazyBeyondBoundsModifier.kt"

# interfaces
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final hasMoreContent:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasMoreContent()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$Companion$emptyBeyondBoundsScope$1;->hasMoreContent:Z

    return p0
.end method
