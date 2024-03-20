.class public Lcom/android/settings/password/RemoteLockscreenValidationFragment;
.super Landroidx/fragment/app/Fragment;
.source "RemoteLockscreenValidationFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mResult:Landroid/app/RemoteLockscreenValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLockscreenCredential()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->clearLockscreenCredential()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mResult:Landroid/app/RemoteLockscreenValidationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unprocessed remote lockscreen validation result"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
