.class Lcom/android/settings/bluetooth/QigsawInstaller$4;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Ljava/util/List<",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/QigsawInstaller;


# virtual methods
.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;>;)V"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    .line 208
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$4;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmInstallManager(Lcom/android/settings/bluetooth/QigsawInstaller;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/QigsawInstaller$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/QigsawInstaller$4$1;-><init>(Lcom/android/settings/bluetooth/QigsawInstaller$4;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    goto :goto_0

    :cond_1
    return-void
.end method
