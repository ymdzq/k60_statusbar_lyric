.class Lcom/miui/maml/ResourceManager$1;
.super Landroid/util/LruCache;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ResourceManager$1;->sizeOf(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)I

    move-result p0

    return p0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)I
    .locals 0

    if-eqz p2, :cond_1

    .line 2
    iget-object p0, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
