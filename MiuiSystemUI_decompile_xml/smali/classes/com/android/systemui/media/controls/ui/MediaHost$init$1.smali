.class public final Lcom/android/systemui/media/controls/ui/MediaHost$init$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const-class p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->unimportantChangeListener:Lcom/android/systemui/media/controls/ui/MediaHost$unimportantChangeListener$1;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->addListener(Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 17
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/MediaHost;->setListeningToMediaData(Z)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->updateViewVisibility()V

    .line 25
    return-void
    .line 28
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    const-class p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->unimportantChangeListener:Lcom/android/systemui/media/controls/ui/MediaHost$unimportantChangeListener$1;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSuppressFold()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->listeners:Ljava/util/List;

    .line 24
    check-cast p1, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 31
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/MediaHost;->setListeningToMediaData(Z)V

    .line 34
    return-void
    .line 37
.end method
