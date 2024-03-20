.class public final Lcom/android/systemui/complication/ComplicationCollectionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mComplications:Landroidx/lifecycle/MediatorLiveData;

.field public final mTransformer:Lcom/android/systemui/complication/ComplicationViewModelTransformer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/ComplicationCollectionLiveData;Lcom/android/systemui/complication/ComplicationViewModelTransformer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/complication/ComplicationCollectionViewModel;)V

    .line 7
    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    .line 10
    invoke-direct {v1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 12
    new-instance v2, Landroidx/lifecycle/Transformations$1;

    .line 15
    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/Transformations$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;)V

    .line 17
    if-eqz p1, :cond_5

    .line 20
    new-instance v0, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 22
    invoke-direct {v0, p1, v2}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Transformations$1;)V

    .line 24
    iget-object v3, v1, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 27
    invoke-virtual {v3, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 33
    if-eqz p1, :cond_1

    .line 35
    iget-object v3, p1, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    .line 37
    if-ne v3, v2, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string p1, "This source was already added with the different observer"

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 49
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 50
    goto :goto_2

    .line 52
    :cond_2
    iget p1, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 53
    if-lez p1, :cond_3

    .line 55
    const/4 p1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    :goto_1
    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    .line 62
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mComplications:Landroidx/lifecycle/MediatorLiveData;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mTransformer:Lcom/android/systemui/complication/ComplicationViewModelTransformer;

    .line 67
    return-void

    .line 69
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 70
    const-string/jumbo p1, "source cannot be null"

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    .line 78
.end method
