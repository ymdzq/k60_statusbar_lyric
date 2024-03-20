.class public final Lcom/android/systemui/fsgesture/DemoFinishAct$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/DemoFinishAct;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 2
    iget-boolean p1, p1, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 8
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v0, Landroid/content/ComponentName;

    .line 13
    const-string v1, "com.android.provision"

    .line 15
    const-string v2, "com.android.provision.activities.NavigationModePickerActivity"

    .line 17
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22
    const-string v0, "IS_COMPLETE"

    .line 25
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 31
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 36
    const v0, 0x7f0101a9    # @anim/activity_start_enter 'res/anim/activity_start_enter.xml'

    .line 38
    const v1, 0x7f0101aa    # @anim/activity_start_exit 'res/anim/activity_start_exit.xml'

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    return-void
    .line 52
.end method
