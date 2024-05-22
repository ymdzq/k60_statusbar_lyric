.class public final Lcom/android/systemui/fsgesture/DemoFinishAct$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

.field public final synthetic val$demoType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/DemoFinishAct;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v0, "DEMO_TO_HOME"

    .line 7
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    const-class v1, Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 15
    const-string v2, "DEMO_TYPE"

    .line 17
    if-nez v0, :cond_2

    .line 19
    const-string v0, "DEMO_TO_RECENTTASK"

    .line 21
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "DEMO_FULLY_SHOW"

    .line 32
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 47
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v0, "FULLY_SHOW_STEP"

    .line 52
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 58
    iget-boolean v0, v0, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    .line 60
    const-string v1, "IS_FROM_PROVISION"

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 68
    const-string v1, "FSG_BACK_GESTURE"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 78
    const-class v3, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 80
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    .line 94
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 99
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 104
    const v0, 0x7f0101a9    # @anim/activity_start_enter 'res/anim/activity_start_enter.xml'

    .line 106
    const v1, 0x7f0101aa    # @anim/activity_start_exit 'res/anim/activity_start_exit.xml'

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 117
    return-void
    .line 120
.end method
