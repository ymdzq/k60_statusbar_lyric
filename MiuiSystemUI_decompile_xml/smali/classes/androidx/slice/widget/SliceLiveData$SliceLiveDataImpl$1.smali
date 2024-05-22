.class public final Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "Error binding slice"

    .line 2
    const-string v1, "SliceLiveData"

    .line 4
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 7
    iget-object v4, v3, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

    .line 11
    if-eqz v4, :cond_2

    .line 13
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    move-result-object v5

    .line 21
    invoke-virtual {v3, v5}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    .line 22
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    move-object v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v5, v3, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    .line 30
    iget-object v6, v3, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 32
    invoke-virtual {v6, v4, v5}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    .line 34
    move-result-object v4

    .line 37
    iget-object v3, v3, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {v4, v3}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    .line 40
    move-result-object v3

    .line 43
    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 44
    iget-object v5, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 46
    if-nez v5, :cond_1

    .line 48
    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    .line 52
    move-result-object v5

    .line 55
    iput-object v5, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 56
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 58
    iget-object v5, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

    .line 60
    iget-object v6, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 62
    iget-object v4, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;

    .line 64
    invoke-virtual {v5, v6, v4}, Landroidx/slice/SliceViewManagerBase;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;)V

    .line 66
    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 69
    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 71
    goto :goto_3

    .line 74
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    :catch_0
    move-exception v3

    .line 79
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 80
    iget-object v4, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;

    .line 82
    if-eqz v4, :cond_3

    .line 84
    iget-object v0, v4, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 86
    iget-object v1, v4, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanelDialog;->removeSliceLiveData(Landroid/net/Uri;)Z

    .line 90
    move-result v3

    .line 93
    if-nez v3, :cond_4

    .line 94
    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 105
    invoke-virtual {p0, v2}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 107
    goto :goto_3

    .line 110
    :catch_1
    move-exception v3

    .line 111
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 112
    iget-object v4, v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;

    .line 114
    if-eqz v4, :cond_5

    .line 116
    iget-object v0, v4, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 118
    iget-object v1, v4, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanelDialog;->removeSliceLiveData(Landroid/net/Uri;)Z

    .line 122
    move-result v3

    .line 125
    if-nez v3, :cond_6

    .line 126
    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_2

    .line 133
    :cond_5
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_6
    :goto_2
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 137
    invoke-virtual {p0, v2}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 139
    :goto_3
    return-void
    .line 142
.end method
