.class public final Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"


# instance fields
.field private final offset:J

.field private final placeable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method private constructor <init>(JLandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->offset:J

    .line 191
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->placeable:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;)V

    return-void
.end method


# virtual methods
.method public final getOffset-nOcc-ac()J
    .locals 2

    .line 190
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->offset:J

    return-wide v0
.end method

.method public final getPlaceable()Landroidx/compose/ui/layout/Placeable;
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->placeable:Landroidx/compose/ui/layout/Placeable;

    return-object p0
.end method
