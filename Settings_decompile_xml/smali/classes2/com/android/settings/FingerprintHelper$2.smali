.class Lcom/android/settings/FingerprintHelper$2;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintHelper;->removeFingerprint(Ljava/lang/String;Lcom/android/settings/FingerprintRemoveCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintHelper;

.field final synthetic val$callback:Lcom/android/settings/FingerprintRemoveCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintHelper;Lcom/android/settings/FingerprintRemoveCallback;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/FingerprintHelper$2;->this$0:Lcom/android/settings/FingerprintHelper;

    iput-object p2, p0, Lcom/android/settings/FingerprintHelper$2;->val$callback:Lcom/android/settings/FingerprintRemoveCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settings/FingerprintHelper$2;->val$callback:Lcom/android/settings/FingerprintRemoveCallback;

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/android/settings/FingerprintRemoveCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/FingerprintHelper$2;->val$callback:Lcom/android/settings/FingerprintRemoveCallback;

    if-eqz p0, :cond_0

    if-nez p2, :cond_0

    .line 149
    invoke-interface {p0}, Lcom/android/settings/FingerprintRemoveCallback;->onRemoved()V

    :cond_0
    return-void
.end method
