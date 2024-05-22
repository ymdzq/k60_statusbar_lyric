.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final networkUri:Landroid/net/Uri;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public available:Z

.field public final bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

.field public final centralSurfaces:Ldagger/Lazy;

.field public final handler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

.field public intent1:Landroid/content/Intent;

.field public intent2:Landroid/content/Intent;

.field public listening:Z

.field public final qsContainerImplController:Lcom/android/systemui/qs/MiuiQSContainer;

.field public final settingsObserver:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;

.field public showDataUsage:Z

.field public final systemUIStat:Ldagger/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.miui.networkassistant.provider/datausage_noti_status"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->networkUri:Landroid/net/Uri;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsage;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Looper;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/os/Handler;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/qs/MiuiQSContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 5
    iput-object p7, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->centralSurfaces:Ldagger/Lazy;

    .line 7
    iput-object p8, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->systemUIStat:Ldagger/Lazy;

    .line 9
    iput-object p9, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->qsContainerImplController:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 11
    new-instance p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 13
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p3, p0, p2}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;-><init>(Landroid/os/Looper;Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;I)V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->handler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 19
    new-instance p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 21
    const/4 p2, 0x1

    .line 23
    invoke-direct {p1, p5, p0, p2}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;-><init>(Landroid/os/Looper;Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;I)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 27
    new-instance p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;

    .line 29
    invoke-direct {p1, p6, p4, p0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->settingsObserver:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;

    .line 34
    return-void
    .line 36
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 4
    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->getDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 11
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;-><init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;I)V

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->getPurchase$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 24
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;

    .line 28
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;-><init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;I)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v0

    .line 44
    const-string/jumbo v1, "status_bar_show_network_assistant"

    .line 45
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->settingsObserver:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;

    .line 52
    const/4 v4, -0x1

    .line 54
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 61
    const/4 v1, -0x2

    .line 62
    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->isShowFlowInfoForUser(Landroid/content/Context;I)Z

    .line 63
    move-result v0

    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 67
    if-ne v1, v0, :cond_0

    .line 69
    goto :goto_0

    .line 71
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 74
    const/16 v1, 0x64

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-boolean v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 81
    if-eqz v2, :cond_1

    .line 83
    iget-boolean v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 85
    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 92
    if-nez v0, :cond_2

    .line 94
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 97
    :cond_2
    :goto_0
    return-void
    .line 100
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 2
    const/16 v1, 0x64

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->settingsObserver:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 19
    return-void
    .line 22
.end method

.method public final updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-boolean v0, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    move v0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v2

    .line 21
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    move-object v4, v3

    .line 26
    check-cast v4, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 27
    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->setDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 29
    :cond_2
    check-cast v3, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 32
    if-eqz v0, :cond_3

    .line 34
    goto :goto_2

    .line 36
    :cond_3
    const/16 v2, 0x8

    .line 37
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    iget-boolean p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->available:Z

    .line 42
    if-eq p1, v0, :cond_4

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->available:Z

    .line 46
    iget-boolean p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 48
    if-eqz p1, :cond_4

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->qsContainerImplController:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/MiuiQSContainer;->updateExpansion(Z)V

    .line 54
    :cond_4
    return-void
    .line 57
.end method
