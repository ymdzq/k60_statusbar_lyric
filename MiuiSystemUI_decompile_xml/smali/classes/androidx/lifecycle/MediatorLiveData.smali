.class public final Landroidx/lifecycle/MediatorLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mSources:Landroidx/arch/core/internal/SafeIterableMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 2
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    .line 5
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onActive()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 2
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    move-object v0, p0

    .line 8
    check-cast v0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;

    .line 9
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 27
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public final onInactive()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 2
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    move-object v0, p0

    .line 8
    check-cast v0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;

    .line 9
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 27
    iget-object v1, v0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    .line 29
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    return-void
    .line 35
.end method
