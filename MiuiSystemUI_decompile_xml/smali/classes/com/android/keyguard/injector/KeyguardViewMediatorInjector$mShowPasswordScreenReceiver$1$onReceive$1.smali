.class public final Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1$onReceive$1;->this$0:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1$onReceive$1;->this$0:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 7
    return-void
    .line 10
.end method
