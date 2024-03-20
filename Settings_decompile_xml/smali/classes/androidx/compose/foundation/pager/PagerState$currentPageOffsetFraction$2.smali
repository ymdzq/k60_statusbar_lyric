.class final Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 4

    .line 239
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v0}, Landroidx/compose/foundation/pager/PagerState;->access$getClosestPageToSnappedPosition(Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/lazy/LazyListItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 240
    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerState;->access$getPageAvailableSpace(Landroidx/compose/foundation/pager/PagerState;)I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    cmpg-float v3, p0, v2

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    const/high16 p0, -0x41000000    # -0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 245
    invoke-static {v0, p0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 238
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
