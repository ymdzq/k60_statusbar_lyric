.class public final Landroidx/core/animation/IntEvaluator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/animation/TypeEvaluator;


# static fields
.field public static final sInstance:Landroidx/core/animation/IntEvaluator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/IntEvaluator;

    .line 2
    invoke-direct {v0}, Landroidx/core/animation/IntEvaluator;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/animation/IntEvaluator;->sInstance:Landroidx/core/animation/IntEvaluator;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    check-cast p3, Ljava/lang/Integer;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p0

    .line 9
    int-to-float p2, p0

    .line 10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 11
    move-result p3

    .line 14
    sub-int/2addr p3, p0

    .line 15
    int-to-float p0, p3

    .line 16
    mul-float/2addr p1, p0

    .line 17
    add-float/2addr p1, p2

    .line 18
    float-to-int p0, p1

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method
