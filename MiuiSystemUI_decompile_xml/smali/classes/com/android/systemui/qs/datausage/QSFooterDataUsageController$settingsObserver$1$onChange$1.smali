.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1$onChange$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1$onChange$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1$onChange$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 2
    sget-object v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->networkUri:Landroid/net/Uri;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, -0x2

    .line 10
    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->isShowFlowInfoForUser(Landroid/content/Context;I)Z

    .line 11
    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 15
    if-ne v1, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 22
    const/16 v1, 0x64

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    iget-boolean v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 29
    if-eqz v2, :cond_1

    .line 31
    iget-boolean v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 33
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 40
    if-nez v0, :cond_2

    .line 42
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 45
    :cond_2
    :goto_0
    return-void
    .line 48
.end method
