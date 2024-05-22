.class public final Lcom/android/keyguard/MiuiSmartCoverHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiSmartCoverHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "miui.intent.action.SMART_COVER"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    const-string p1, "is_smart_cover_open"

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    move-result p1

    .line 20
    const/4 p2, 0x1

    .line 21
    xor-int/2addr p1, p2

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 23
    iput-boolean p1, v1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mLidShowing:Z

    .line 25
    iget-object v1, v1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 27
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    if-eqz p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 37
    iput-boolean p2, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mHideLockForLid:Z

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 42
    iget-boolean p1, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 44
    if-nez p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 48
    iget-object p1, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 52
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 58
    iget-object p1, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 60
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 64
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 70
    iget-object p1, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    const-string p1, "MiuiSmartCoverHelper"

    .line 77
    const-string p2, "keyguardDone after smart conver open"

    .line 79
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 84
    iget-object p1, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 91
    iput-boolean v0, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 95
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mHideLockForLid:Z

    .line 97
    goto :goto_0

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 100
    iput-boolean v0, p1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$2;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 104
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mHideLockForLid:Z

    .line 106
    :cond_4
    :goto_0
    return-void
    .line 108
.end method
