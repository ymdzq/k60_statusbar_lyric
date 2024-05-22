.class public final Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider;


# instance fields
.field public final callbacks:Ljava/util/List;

.field public isFolded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2
    const/16 v0, 0x258

    .line 4
    if-ge p1, v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    .line 11
    if-ne p1, v0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    .line 16
    iget-object p1, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    .line 18
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 25
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    .line 36
    iget-boolean v1, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    .line 38
    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;->onFoldUpdated(Z)V

    .line 40
    goto :goto_1

    .line 43
    :cond_2
    return-void
    .line 44
.end method

.method public final registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    .line 7
    invoke-interface {p1, p0}, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;->onFoldUpdated(Z)V

    .line 9
    return-void
    .line 12
.end method
