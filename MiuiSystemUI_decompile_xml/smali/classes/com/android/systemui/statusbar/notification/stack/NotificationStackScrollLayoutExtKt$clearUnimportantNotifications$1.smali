.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $this_clearUnimportantNotifications:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final synthetic $viewToRemove:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;->$this_clearUnimportantNotifications:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;->$viewToRemove:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;->$this_clearUnimportantNotifications:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;->$viewToRemove:Ljava/util/ArrayList;

    .line 6
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onClearAllAnimationsEnd(ILjava/util/List;)V

    .line 9
    return-void
    .line 12
.end method
