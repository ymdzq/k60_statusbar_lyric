.class public final Lcom/android/wm/shell/bubbles/BubbleController$2;
.super Landroid/content/pm/LauncherApps$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-direct {p2, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 12
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;

    .line 15
    const/16 v1, 0xd

    .line 17
    invoke-direct {p1, p0, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;II)V

    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V

    .line 33
    return-void
    .line 36
.end method

.method public final onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 5

    .line 1
    array-length p2, p1

    .line 2
    const/4 p3, 0x0

    .line 3
    :goto_0
    if-ge p3, p2, :cond_0

    .line 4
    aget-object v0, p1, p3

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    .line 15
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3, v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;

    .line 21
    const/16 v4, 0xd

    .line 23
    invoke-direct {v0, v1, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;II)V

    .line 25
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 28
    move-result-object v3

    .line 31
    invoke-static {v3, v2, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V

    .line 32
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 35
    move-result-object v1

    .line 38
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V

    .line 39
    add-int/lit8 p3, p3, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    return-void
    .line 45
.end method

.method public final onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/LauncherApps$Callback;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance p3, Ljava/util/HashSet;

    .line 12
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 31
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda5;

    .line 41
    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 43
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;

    .line 46
    const/4 p3, 0x0

    .line 48
    const/16 v0, 0xc

    .line 49
    invoke-direct {p1, p0, v0, p3}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;II)V

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 54
    move-result-object p3

    .line 57
    invoke-static {p3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V

    .line 65
    return-void
    .line 68
.end method
