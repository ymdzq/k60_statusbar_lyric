.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$4;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$4;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifPackageNames:Ljava/util/List;

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 19
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 21
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 37
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 39
    if-ne v0, p1, :cond_2

    .line 41
    if-nez p2, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->update()V

    .line 45
    :cond_2
    return-void
    .line 48
.end method
