.class public final Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 20
    const-class v2, Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    const-string v1, "DEMO_TYPE"

    .line 26
    const-string v2, "DEMO_FULLY_SHOW"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "FULLY_SHOW_STEP"

    .line 33
    const/4 v2, 0x2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 39
    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 41
    iget-boolean v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    .line 43
    const-string v2, "IS_FROM_PROVISION"

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 50
    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 63
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    .line 65
    const v1, 0x7f0101a9    # @anim/activity_start_enter 'res/anim/activity_start_enter.xml'

    .line 67
    const v2, 0x7f0101aa    # @anim/activity_start_exit 'res/anim/activity_start_exit.xml'

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 78
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    return-void

    .line 85
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 96
.end method
