.class final Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentScope;->slideIntoContainer-HTTW7Ok(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $initialOffset:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->$initialOffset:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/Integer;
    .locals 5

    .line 396
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->$initialOffset:Lkotlin/jvm/functions/Function1;

    .line 397
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    invoke-static {v1}, Landroidx/compose/animation/AnimatedContentScope;->access$getCurrentSize-YbymL2g(Landroidx/compose/animation/AnimatedContentScope;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    invoke-static {p1, p1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v3

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    invoke-static {p0}, Landroidx/compose/animation/AnimatedContentScope;->access$getCurrentSize-YbymL2g(Landroidx/compose/animation/AnimatedContentScope;)J

    move-result-wide p0

    invoke-static {v2, v3, v4, p0, p1}, Landroidx/compose/animation/AnimatedContentScope;->access$calculateOffset-emnUabE(Landroidx/compose/animation/AnimatedContentScope;JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 396
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 395
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->invoke(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
