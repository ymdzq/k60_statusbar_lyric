.class Lcom/android/settings/FingerprintHelper$3;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintHelper;->identify(Lcom/android/settings/FingerprintIdentifyCallback;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintHelper;

.field final synthetic val$callback:Lcom/android/settings/FingerprintIdentifyCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintHelper;Lcom/android/settings/FingerprintIdentifyCallback;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/FingerprintHelper$3;->this$0:Lcom/android/settings/FingerprintHelper;

    iput-object p2, p0, Lcom/android/settings/FingerprintHelper$3;->val$callback:Lcom/android/settings/FingerprintIdentifyCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/android/settings/FingerprintHelper$3;->val$callback:Lcom/android/settings/FingerprintIdentifyCallback;

    invoke-interface {p0}, Lcom/android/settings/FingerprintIdentifyCallback;->onLockout()V

    :cond_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 199
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 200
    iget-object p0, p0, Lcom/android/settings/FingerprintHelper$3;->val$callback:Lcom/android/settings/FingerprintIdentifyCallback;

    invoke-interface {p0}, Lcom/android/settings/FingerprintIdentifyCallback;->onFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 194
    iget-object p0, p0, Lcom/android/settings/FingerprintHelper$3;->val$callback:Lcom/android/settings/FingerprintIdentifyCallback;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/FingerprintCompat;->getFingerIdForFingerprint(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/FingerprintIdentifyCallback;->onIdentified(I)V

    return-void
.end method
