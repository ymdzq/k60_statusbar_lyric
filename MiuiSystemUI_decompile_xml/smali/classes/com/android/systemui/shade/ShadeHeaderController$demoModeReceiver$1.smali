.class public final Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 0

    .line 1
    const-string p0, "clock"

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/Clock;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onDemoModeFinished()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->onDemoModeFinished()V

    .line 6
    return-void
    .line 9
.end method

.method public final onDemoModeStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$demoModeReceiver$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 7
    return-void
    .line 9
.end method
