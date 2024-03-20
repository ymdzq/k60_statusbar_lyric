.class public final Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;
.super Ljava/lang/Object;
.source "LazyListAnimateScrollScope.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListAnimateScrollScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListAnimateScrollScope.kt\nandroidx/compose/foundation/lazy/LazyListAnimateScrollScope\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,65:1\n116#2,2:66\n33#2,6:68\n118#2:74\n132#2,3:75\n33#2,4:78\n135#2,2:82\n38#2:84\n137#2:85\n*S KotlinDebug\n*F\n+ 1 LazyListAnimateScrollScope.kt\nandroidx/compose/foundation/lazy/LazyListAnimateScrollScope\n*L\n44#1:66,2\n44#1:68,6\n44#1:74\n54#1:75,3\n54#1:78,4\n54#1:82,2\n54#1:84\n54#1:85\n*E\n"
.end annotation


# instance fields
.field private final numOfItemsForTeleport:I

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    const/16 p1, 0x64

    .line 41
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->numOfItemsForTeleport:I

    return-void
.end method
