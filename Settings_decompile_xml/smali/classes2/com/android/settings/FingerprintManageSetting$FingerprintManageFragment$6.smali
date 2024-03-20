.class Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$6;
.super Ljava/lang/Object;
.source "FingerprintManageSetting.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->updateFingerprintList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$6;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 313
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "add_fingerprint"

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$6;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->-$$Nest$maddFingerprint(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$6;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {p0, v0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->-$$Nest$mshowFingerprintDetails(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
