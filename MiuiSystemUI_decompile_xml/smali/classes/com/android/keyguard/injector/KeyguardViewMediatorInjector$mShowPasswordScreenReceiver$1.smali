.class public final Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $mMainHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;->this$0:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;->$mMainHandler:Landroid/os/Handler;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;->this$0:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 15
    iget-object p2, p1, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 17
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 19
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 21
    if-eqz p2, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;->$mMainHandler:Landroid/os/Handler;

    .line 25
    new-instance p2, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1$onReceive$1;

    .line 27
    invoke-direct {p2, p1}, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1$onReceive$1;-><init>(Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;)V

    .line 29
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_0
    return-void
    .line 35
.end method
