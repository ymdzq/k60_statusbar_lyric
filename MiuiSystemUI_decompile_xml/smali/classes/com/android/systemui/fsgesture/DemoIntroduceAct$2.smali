.class public final Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

.field public final synthetic val$isFromPro:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->val$isFromPro:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    .line 7
    const-class v1, Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    const-string v0, "DEMO_TYPE"

    .line 14
    const-string v1, "DEMO_FULLY_SHOW"

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v0, "FULLY_SHOW_STEP"

    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    const-string v0, "IS_FROM_PROVISION"

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->val$isFromPro:Z

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    .line 34
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    return-void
    .line 44
.end method
