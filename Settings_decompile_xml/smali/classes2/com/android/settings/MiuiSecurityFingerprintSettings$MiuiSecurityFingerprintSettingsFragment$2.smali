.class Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$2;
.super Ljava/lang/Object;
.source "MiuiSecurityFingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->updateFingerprintList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$2;->this$0:Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 174
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "add_fingerprint"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$2;->this$0:Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->-$$Nest$maddFingerprint(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$2;->this$0:Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-static {p0, v0, p1}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->-$$Nest$mshowFingerprintDetails(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
