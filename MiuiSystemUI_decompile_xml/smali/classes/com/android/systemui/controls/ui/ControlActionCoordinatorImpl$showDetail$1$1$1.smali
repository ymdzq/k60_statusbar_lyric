.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Lcom/android/wm/shell/taskview/TaskView;

    .line 3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 5
    new-instance v8, Lcom/android/systemui/controls/ui/DetailDialog;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 9
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 17
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 19
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 21
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 23
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 25
    move-object v0, v8

    .line 27
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/wm/shell/taskview/TaskView;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 31
    new-instance v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1$1$1;

    .line 33
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)V

    .line 35
    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 41
    iput-object v8, p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 44
    return-void
    .line 46
.end method
