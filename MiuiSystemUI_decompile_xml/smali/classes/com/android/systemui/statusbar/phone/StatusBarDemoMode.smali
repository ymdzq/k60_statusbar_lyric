.class public final Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mOperatorNameView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;Landroid/view/View;Lcom/android/systemui/demomode/DemoModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mOperatorNameView:Landroid/view/View;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string v0, "bars"

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v0, "clock"

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v0, "operator"

    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-object p0
    .line 22
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDemoModeFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDemoModeStarted()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewAttached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 4
    return-void
    .line 7
.end method
