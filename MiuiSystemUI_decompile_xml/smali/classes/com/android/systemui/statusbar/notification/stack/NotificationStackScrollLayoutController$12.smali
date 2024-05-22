.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEnd(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMiuiClearAllListeners:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;II)V

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onStart(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMiuiClearAllListeners:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;II)V

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    return-void
    .line 17
.end method
