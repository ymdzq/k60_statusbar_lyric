.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRemove(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 10
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 12
    move-result v0

    .line 15
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 28
    if-eqz v2, :cond_2

    .line 30
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->notifKey:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 34
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 50
    if-ne p1, v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->update()V

    .line 54
    :cond_2
    :goto_0
    return-void
    .line 57
.end method
