.class public final Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    const/16 p2, 0x3a

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 28
    move-result p2

    .line 31
    add-int/lit8 p2, p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    return-void

    .line 44
    :cond_1
    const-string p2, "com.google.android.apps.nbu.paisa.user"

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p2

    .line 50
    if-nez p2, :cond_2

    .line 51
    const-string p2, "com.google.android.apps.chromecast.app"

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p2

    .line 58
    if-nez p2, :cond_2

    .line 59
    const-string p2, "com.google.android.apps.walletnfcrel"

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 69
    sget-object p2, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->KEYGUARD_SMART_HOME:Landroid/net/Uri;

    .line 71
    invoke-virtual {p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfos()V

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 76
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initLeftView()V

    .line 78
    :cond_3
    return-void
    .line 81
.end method
