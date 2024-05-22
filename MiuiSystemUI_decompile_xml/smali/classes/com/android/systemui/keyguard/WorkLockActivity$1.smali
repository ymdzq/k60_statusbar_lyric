.class public final Lcom/android/systemui/keyguard/WorkLockActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    .line 4
    move-result p1

    .line 7
    const-string v0, "android.intent.extra.user_handle"

    .line 8
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    move-result p2

    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    .line 16
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    .line 18
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    :cond_0
    return-void
    .line 33
.end method
