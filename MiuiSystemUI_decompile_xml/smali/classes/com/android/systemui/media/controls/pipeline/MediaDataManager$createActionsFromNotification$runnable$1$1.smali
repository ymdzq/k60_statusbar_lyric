.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $action:Landroid/app/Notification$Action;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Landroid/app/Notification$Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;->$action:Landroid/app/Notification$Action;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;->$action:Landroid/app/Notification$Action;

    .line 2
    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 6
    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->access$sendPendingIntent(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Landroid/app/PendingIntent;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
