.class public final Lmiui/stub/MiuiStub$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# instance fields
.field public final synthetic this$0:Lmiui/stub/MiuiStub;


# direct methods
.method public constructor <init>(Lmiui/stub/MiuiStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 14
    return-void
    .line 17
.end method

.method public final getDozeAmount()F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final getState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final isDozing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final isDreaming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDreaming()Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final isExpanded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final isPulsing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$8;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mStatusBarStateController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 14
    return-void
    .line 17
.end method
