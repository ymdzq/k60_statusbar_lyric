.class final Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PagerState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PagerStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/unit/Density;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;

    invoke-direct {v0}, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;->INSTANCE:Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/unit/Density;FF)Ljava/lang/Float;
    .locals 0

    const-string p0, "$this$null"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 407
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 407
    check-cast p1, Landroidx/compose/ui/unit/Density;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;->invoke(Landroidx/compose/ui/unit/Density;FF)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
