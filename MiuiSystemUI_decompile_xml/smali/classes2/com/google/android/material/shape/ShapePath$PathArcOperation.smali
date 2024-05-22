.class public final Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public startAngle:F

.field public sweepAngle:F

.field public top:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 5
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 7
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 9
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 7
    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    .line 10
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 12
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 14
    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 16
    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 23
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 25
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 28
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 31
    return-void
    .line 34
.end method
