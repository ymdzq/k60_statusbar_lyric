.class public final Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$2;
.super Landroid/util/LruCache;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 10
    move-result p0

    .line 13
    div-int/lit16 p0, p0, 0x400

    .line 14
    return p0
    .line 16
.end method
