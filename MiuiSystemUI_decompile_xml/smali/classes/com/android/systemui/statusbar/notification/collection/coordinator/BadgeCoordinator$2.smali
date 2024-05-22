.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    const-string p2, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    .line 4
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p2, "com.miui.extra_update_request_first_time"

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 19
    return-void
    .line 22
.end method
