.class public final Lcom/android/systemui/wmshell/MiuiBubbleManager$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/MiuiBubbleManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$3;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onEntryAdded: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiBubbleManager"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$3;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 21
    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/MiuiBubbleManager;->-$$Nest$mshouldHeadUp(Lcom/android/systemui/wmshell/MiuiBubbleManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;

    .line 31
    check-cast p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 35
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->-$$Nest$mpopBubbleNotification(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    if-eq p2, p0, :cond_0

    .line 4
    const/16 p0, 0x9

    .line 6
    if-ne p2, p0, :cond_1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    const-string p2, "onEntryRemoved: "

    .line 12
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    const-string p1, "MiuiBubbleManager"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onEntryUpdated: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 23
    const-string v0, "MiuiBubbleManager"

    .line 24
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$3;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 29
    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/MiuiBubbleManager;->-$$Nest$mshouldHeadUp(Lcom/android/systemui/wmshell/MiuiBubbleManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 31
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;

    .line 39
    check-cast p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 43
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->-$$Nest$mpopBubbleNotification(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V

    .line 45
    :cond_0
    return-void
    .line 48
.end method
