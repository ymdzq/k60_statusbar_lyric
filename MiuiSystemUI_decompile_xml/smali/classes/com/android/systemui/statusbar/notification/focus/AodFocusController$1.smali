.class public final Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/focus/AodFocusController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/focus/AodFocusController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->this$0:Lcom/android/systemui/statusbar/notification/focus/AodFocusController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAdd(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->this$0:Lcom/android/systemui/statusbar/notification/focus/AodFocusController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->getCurrentEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusNotifications:Ljava/util/List;

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusNotifications:Ljava/util/List;

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusViews:Ljava/util/Map;

    .line 22
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 24
    check-cast v1, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->updateCurrent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 31
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 34
    if-nez v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 38
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dispatchFocusNotification(ILjava/lang/String;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 45
    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dispatchFocusNotification(ILjava/lang/String;)V

    .line 48
    :goto_0
    return-void
    .line 51
.end method

.method public final onRemove(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->this$0:Lcom/android/systemui/statusbar/notification/focus/AodFocusController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusNotifications:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusViews:Ljava/util/Map;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->getCurrentEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->updateCurrent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 24
    if-nez p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 29
    const/4 p1, 0x1

    .line 31
    const-string v0, ""

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dispatchFocusNotification(ILjava/lang/String;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 38
    const/4 v0, 0x2

    .line 40
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dispatchFocusNotification(ILjava/lang/String;)V

    .line 43
    :goto_0
    return-void
    .line 46
.end method
