.class public final Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 8
    iget-object v0, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 12
    const/4 v1, 0x3

    .line 13
    :try_start_0
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 14
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
    .line 21
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 10
    return-void
    .line 13
.end method
