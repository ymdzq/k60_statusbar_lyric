.class public final Landroidx/core/animation/FloatEvaluator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/animation/TypeEvaluator;


# static fields
.field public static final sInstance:Landroidx/core/animation/FloatEvaluator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/FloatEvaluator;

    .line 2
    invoke-direct {v0}, Landroidx/core/animation/FloatEvaluator;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/animation/FloatEvaluator;->sInstance:Landroidx/core/animation/FloatEvaluator;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Float;

    .line 2
    check-cast p3, Ljava/lang/Float;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result p0

    .line 9
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p2

    .line 13
    sub-float/2addr p2, p0

    .line 14
    mul-float/2addr p2, p1

    .line 15
    add-float/2addr p2, p0

    .line 16
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method
