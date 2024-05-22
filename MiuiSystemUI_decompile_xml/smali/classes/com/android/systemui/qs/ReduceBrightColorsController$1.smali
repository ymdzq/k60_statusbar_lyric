.class public final Lcom/android/systemui/qs/ReduceBrightColorsController$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ReduceBrightColorsController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    if-nez p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 13
    iget-object p2, p2, Lcom/android/systemui/qs/ReduceBrightColorsController;->mListeners:Ljava/util/ArrayList;

    .line 15
    monitor-enter p2

    .line 17
    if-eqz p1, :cond_1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/qs/ReduceBrightColorsController;->mListeners:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    const-string/jumbo v0, "reduce_bright_colors_activated"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 39
    iget-object p1, p1, Lcom/android/systemui/qs/ReduceBrightColorsController;->mListeners:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 46
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 59
    iget-object v1, v1, Lcom/android/systemui/qs/ReduceBrightColorsController;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 61
    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    .line 63
    move-result v1

    .line 66
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;->onActivated(Z)V

    .line 67
    goto :goto_1

    .line 70
    :cond_1
    monitor-exit p2

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
    .line 75
.end method
