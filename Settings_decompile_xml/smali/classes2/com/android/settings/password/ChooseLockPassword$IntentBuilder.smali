.class public Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p0, "confirm_credentials"

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_biometrics"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFace(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPassword(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setPasswordRequirement(ILandroid/app/admin/PasswordMetrics;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "min_complexity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v0, "min_metrics"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setPasswordType(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "unification_profile_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v0, "unification_profile_credential"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "request_gk_pw_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
