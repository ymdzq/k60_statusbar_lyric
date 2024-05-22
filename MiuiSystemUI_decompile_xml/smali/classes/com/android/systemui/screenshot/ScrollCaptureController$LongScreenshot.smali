.class public final Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

.field public final mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;Lcom/android/systemui/screenshot/ImageTileSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final toBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 13
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    const/4 p0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Landroid/graphics/RenderNode;

    .line 33
    const-string v2, "Bitmap Export"

    .line 35
    invoke-direct {v1, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 40
    move-result v2

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 44
    move-result v4

    .line 47
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 48
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 51
    move-result-object v2

    .line 54
    new-instance v3, Lcom/android/systemui/screenshot/TiledImageDrawable;

    .line 55
    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    .line 57
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 60
    invoke-virtual {v3, v2}, Lcom/android/systemui/screenshot/TiledImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 69
    move-result p0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 73
    move-result v0

    .line 76
    invoke-static {v1, p0, v0}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    .line 77
    move-result-object p0

    .line 80
    :goto_0
    return-object p0
    .line 81
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "LongScreenshot{w="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", h="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 23
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo p0, "}"

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method
