.class Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;
.super Ljava/lang/Object;
.source "FingerprintManageSetting.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->addApplyFingerprintItem(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

.field final synthetic val$pref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    iput-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->val$pref:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 445
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 446
    iget-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->val$pref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    .line 447
    iget-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->-$$Nest$fgetmFingerlistIds(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->-$$Nest$fgetmFingerlistIds(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 448
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->-$$Nest$maddFingerprint(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    :cond_1
    return v1
.end method
