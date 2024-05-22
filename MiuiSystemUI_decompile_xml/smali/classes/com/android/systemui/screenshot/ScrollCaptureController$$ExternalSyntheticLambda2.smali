.class public final synthetic Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

.field public final synthetic f$1:Landroid/view/ScrollCaptureResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScrollCaptureController;Landroid/view/ScrollCaptureResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda2;->f$1:Landroid/view/ScrollCaptureResponse;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda2;->f$1:Landroid/view/ScrollCaptureResponse;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v2

    .line 11
    const-string/jumbo v3, "screenshot.scroll_max_pages"

    .line 12
    const/high16 v4, 0x40400000    # 3.0f

    .line 15
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 17
    move-result v2

    .line 20
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p0}, Landroid/view/ScrollCaptureResponse;->getConnection()Landroid/view/IScrollCaptureConnection;

    .line 26
    move-result-object v4

    .line 29
    new-instance v5, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {v5, v3, v4, p0, v2}, Lcom/android/systemui/screenshot/ScrollCaptureClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScrollCaptureClient;Landroid/view/IScrollCaptureConnection;Landroid/view/ScrollCaptureResponse;F)V

    .line 32
    invoke-static {v5}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 35
    move-result-object p0

    .line 38
    iput-object p0, v0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSessionFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 39
    new-instance v2, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;

    .line 41
    const/4 v3, 0x3

    .line 43
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScrollCaptureController;I)V

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 47
    move-result-object v0

    .line 50
    iget-object p0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 51
    invoke-virtual {p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 53
    return-void
    .line 56
.end method
