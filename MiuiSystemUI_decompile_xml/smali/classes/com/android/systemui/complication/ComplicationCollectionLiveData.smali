.class public final Lcom/android/systemui/complication/ComplicationCollectionLiveData;
.super Landroidx/lifecycle/LiveData;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mStateControllerCallback:Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;-><init>(Lcom/android/systemui/complication/ComplicationCollectionLiveData;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onActive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onInactive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 6
    return-void
    .line 9
.end method
