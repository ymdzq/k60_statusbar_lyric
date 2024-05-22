.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    goto :goto_1

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 15
    check-cast p0, Landroid/graphics/Bitmap;

    .line 17
    if-nez p0, :cond_0

    .line 19
    iget-object p0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 21
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mScreenshotLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 27
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    :goto_0
    return-void

    .line 32
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 33
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 35
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 37
    iget-object v2, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 39
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Lcom/android/systemui/screenshot/ImageExporter$Result;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    .line 47
    if-nez p0, :cond_1

    .line 49
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    goto :goto_2

    .line 54
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 55
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_2

    .line 60
    :catch_0
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    :goto_2
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 66
.end method
