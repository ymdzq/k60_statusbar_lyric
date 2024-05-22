.class public final Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserUnlocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setCustomBackground()V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 11
    if-eqz p0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->initLeftView()V

    .line 19
    :cond_1
    return-void
    .line 22
.end method
