.class public final Lcom/android/launcher3/icons/FastBitmapDrawable$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "scale"

    .line 2
    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 2
    iget p0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 2
    iput p2, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
    .line 9
.end method
