.class public final Lcom/android/systemui/controls/ui/DetailDialog$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 20
    iget v0, p1, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 22
    const/4 v1, -0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 28
    move-result-object v0

    .line 31
    iget v2, p1, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    .line 34
    iput v1, p1, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 37
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 41
    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 46
    invoke-direct {p1, v0}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    .line 48
    iget-object v0, v0, Lcom/android/systemui/controls/ui/DetailDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 51
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->onDismiss()Z

    .line 59
    goto :goto_2

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 65
    const/4 v0, 0x0

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 69
    :goto_2
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 74
.end method
