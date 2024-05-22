.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

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
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1;Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
    .line 14
.end method
