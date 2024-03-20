.class public Lcom/android/settings/privacy/DataTaskLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "DataTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 22
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacy/DataTaskLoader;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/settings/privacy/DataTaskLoader;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/settings/privacy/DataTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/privacy/DataTaskLoader;->mData:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
