.class public final synthetic Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :goto_0
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge p0, v1, :cond_0

    .line 9
    sget-object v1, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Runnable;

    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    add-int/lit8 p0, p0, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    return-void
    .line 28
.end method
