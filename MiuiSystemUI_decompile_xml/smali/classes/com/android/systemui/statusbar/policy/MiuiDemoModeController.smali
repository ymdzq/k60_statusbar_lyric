.class public final Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mDemoReceiver:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;

.field public mLastArgs:Landroid/os/Bundle;

.field public mLastCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mCallbacks:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mDemoReceiver:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;

    .line 17
    new-instance p0, Landroid/content/IntentFilter;

    .line 19
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    const-string v1, "com.android.systemui.demo"

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    return-void
    .line 32
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/demomode/DemoMode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mCallbacks:Ljava/util/List;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mLastCommand:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mLastCommand:Ljava/lang/String;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mLastArgs:Landroid/os/Bundle;

    .line 28
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
    .line 33
.end method
