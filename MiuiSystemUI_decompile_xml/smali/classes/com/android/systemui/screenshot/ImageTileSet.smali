.class public final Lcom/android/systemui/screenshot/ImageTileSet;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContentListeners:Lcom/android/internal/util/CallbackRegistry;

.field public final mHandler:Landroid/os/Handler;

.field public final mRegion:Landroid/graphics/Region;

.field public final mTiles:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/graphics/Region;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/screenshot/ImageTile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/android/systemui/screenshot/ImageTileSet$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ImageTileSet$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;Lcom/android/systemui/screenshot/ImageTile;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 30
    iget-object p1, p1, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 32
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 34
    invoke-virtual {v0, p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 36
    iget-object p1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 39
    if-eqz p1, :cond_1

    .line 41
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 45
    :cond_1
    return-void
    .line 48
.end method

.method public final clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/screenshot/ImageTile;

    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTile;->close()V

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 41
    if-eqz v0, :cond_2

    .line 43
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 47
    :cond_2
    return-void
    .line 50
.end method

.method public final getHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
