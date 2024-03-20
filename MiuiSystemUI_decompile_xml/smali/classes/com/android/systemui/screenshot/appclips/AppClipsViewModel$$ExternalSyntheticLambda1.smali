.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$3:Landroid/os/UserHandle;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    .line 6
    iget-object v8, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$3:Landroid/os/UserHandle;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p0, Landroid/graphics/RenderNode;

    .line 13
    const-string v3, "Screenshot save"

    .line 15
    invoke-direct {p0, v3}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 20
    move-result v3

    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 29
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 32
    move-result-object v3

    .line 35
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 36
    neg-int v4, v4

    .line 38
    int-to-float v4, v4

    .line 39
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 40
    neg-int v5, v5

    .line 42
    int-to-float v5, v5

    .line 43
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 44
    invoke-virtual {v3, v2}, Landroid/graphics/RecordingCanvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 47
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 56
    move-result v1

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 60
    move-result v2

    .line 63
    invoke-static {p0, v1, v2}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    .line 64
    move-result-object v6

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 68
    move-result-object v5

    .line 71
    iget-object v4, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 72
    iget-object v3, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 79
    move-result-object v7

    .line 82
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/os/UserHandle;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 83
    move-result-object p0

    .line 86
    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;

    .line 87
    const/4 v2, 0x1

    .line 89
    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Ljava/lang/Object;I)V

    .line 90
    iget-object p0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 93
    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 95
    invoke-virtual {p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 97
    return-void
    .line 100
.end method
