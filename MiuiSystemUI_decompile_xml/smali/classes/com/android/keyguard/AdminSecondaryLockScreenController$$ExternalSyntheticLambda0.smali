.class public final synthetic Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
