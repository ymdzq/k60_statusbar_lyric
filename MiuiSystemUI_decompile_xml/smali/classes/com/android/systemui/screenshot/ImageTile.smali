.class public final Lcom/android/systemui/screenshot/ImageTile;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final COLOR_SPACE:Landroid/graphics/ColorSpace;


# instance fields
.field public final mImage:Landroid/media/Image;

.field public final mLocation:Landroid/graphics/Rect;

.field public mNode:Landroid/graphics/RenderNode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 2
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/screenshot/ImageTile;->COLOR_SPACE:Landroid/graphics/ColorSpace;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/media/Image;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "image"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/media/Image;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-object v0, p2

    .line 18
    check-cast v0, Landroid/graphics/Rect;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "image must be a hardware image"

    .line 27
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    return-void
    .line 32
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
    .line 19
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "{location="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", source="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", buffer="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 30
    invoke-virtual {p0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo p0, "}"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    return-object p0
    .line 49
.end method
