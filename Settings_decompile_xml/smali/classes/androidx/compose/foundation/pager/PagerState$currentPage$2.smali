.class final Landroidx/compose/foundation/pager/PagerState$currentPage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PagerState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerState;-><init>(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$currentPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState$currentPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v0}, Landroidx/compose/foundation/pager/PagerState;->access$getClosestPageToSnappedPosition(Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/lazy/LazyListItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$currentPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getInitialPage()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState$currentPage$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
