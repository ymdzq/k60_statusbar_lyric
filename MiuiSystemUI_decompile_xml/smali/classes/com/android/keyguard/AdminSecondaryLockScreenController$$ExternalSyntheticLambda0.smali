.class public final synthetic Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    .line 4
    const-string p0, "AdminSecondaryLockScreenController"

    .line 7
    const-string v0, "KeyguardClient service died"

    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
    .line 14
.end method
