.class public final Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 6
    if-eq v0, p1, :cond_0

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const-class v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 18
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 24
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 30
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 36
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 40
    return-void
    .line 43
.end method

.method public final onDreamingChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 4
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 4
    iput p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 8
    return-void
    .line 11
.end method
