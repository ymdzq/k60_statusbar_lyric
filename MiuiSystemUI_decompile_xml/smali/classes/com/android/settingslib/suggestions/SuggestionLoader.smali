.class public final Lcom/android/settingslib/suggestions/SuggestionLoader;
.super Landroid/content/AsyncTaskLoader;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/suggestions/SuggestionLoader;->deliverResult$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public final deliverResult$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isReset()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    if-eqz p1, :cond_0

    .line 8
    check-cast p1, Ljava/util/List;

    .line 10
    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isStarted()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 23
    :cond_2
    if-eqz v0, :cond_3

    .line 26
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 28
    if-eq v0, p0, :cond_3

    .line 30
    check-cast v0, Ljava/util/List;

    .line 32
    :cond_3
    return-void
    .line 34
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public final bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/suggestions/SuggestionLoader;->onCanceled$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onCanceled$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Ljava/util/List;

    .line 7
    :cond_0
    return-void
    .line 9
.end method

.method public final bridge synthetic onReset()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionLoader;->onReset$com$android$settingslib$utils$AsyncLoader()V

    .line 2
    return-void
    .line 5
.end method

.method public final onReset$com$android$settingslib$utils$AsyncLoader()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 2
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    .line 5
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    check-cast v0, Ljava/util/List;

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 15
    return-void
    .line 17
.end method

.method public final bridge synthetic onStartLoading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionLoader;->onStartLoading$com$android$settingslib$utils$AsyncLoader()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartLoading$com$android$settingslib$utils$AsyncLoader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionLoader;->deliverResult$com$android$settingslib$utils$AsyncLoader(Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->takeContentChanged()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoader;->mResult:Ljava/lang/Object;

    .line 15
    if-nez v0, :cond_2

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    .line 19
    :cond_2
    return-void
    .line 22
.end method

.method public final onStopLoading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    .line 2
    return-void
    .line 5
.end method
