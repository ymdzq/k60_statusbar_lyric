.class public Lcom/android/systemui/SecretCodeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "android.telephony.action.SECRET_CODE"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    new-instance p2, Ljava/lang/Thread;

    .line 14
    new-instance v0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SecretCodeBroadcastReceiver;Landroid/content/Context;)V

    .line 18
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
