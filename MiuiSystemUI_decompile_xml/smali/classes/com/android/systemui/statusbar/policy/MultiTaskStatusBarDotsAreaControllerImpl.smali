.class public final Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;


# instance fields
.field public final mListeners:Ljava/util/ArrayList;

.field public final mRects:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;->mRects:Ljava/util/List;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final hasDots()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;->mRects:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    return p0
    .line 12
.end method

.method public final overlapArea([I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;->mRects:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/graphics/Rect;

    .line 23
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 25
    const/4 v3, 0x1

    .line 27
    aget v4, p1, v3

    .line 28
    if-gt v2, v4, :cond_0

    .line 30
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 32
    aget v2, p1, v0

    .line 34
    if-ge v1, v2, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return v3

    .line 39
    :cond_2
    return v0
    .line 40
.end method

.method public final updateDotsArea(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;->mRects:Ljava/util/List;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    if-eqz p1, :cond_0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method
