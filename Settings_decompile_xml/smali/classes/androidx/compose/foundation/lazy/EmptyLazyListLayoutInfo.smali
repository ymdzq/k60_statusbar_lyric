.class final Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

.field private static final afterContentPadding:I

.field private static final beforeContentPadding:I

.field private static final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private static final totalItemsCount:I

.field private static final viewportSize:J

.field private static final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    .line 426
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    .line 430
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportSize:J

    .line 431
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    .line 434
    sget p0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->afterContentPadding:I

    return p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    .line 433
    sget p0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->beforeContentPadding:I

    return p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 431
    sget-object p0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    .line 429
    sget p0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->totalItemsCount:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    .line 430
    sget-wide v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportSize:J

    return-wide v0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .line 426
    sget-object p0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    return-object p0
.end method
