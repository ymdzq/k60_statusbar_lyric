.class public final Lcom/google/android/material/animation/ImageMatrixProperty;
.super Landroid/util/Property;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Matrix;

    .line 2
    const-string v1, "imageMatrixProperty"

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Landroid/graphics/Matrix;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Landroid/graphics/Matrix;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    iget-object p0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Landroid/graphics/Matrix;

    .line 13
    return-object p0
    .line 15
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    .line 2
    check-cast p2, Landroid/graphics/Matrix;

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 6
    return-void
    .line 9
.end method
