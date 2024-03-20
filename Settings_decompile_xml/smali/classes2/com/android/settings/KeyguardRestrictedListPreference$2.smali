.class Lcom/android/settings/KeyguardRestrictedListPreference$2;
.super Ljava/lang/Object;
.source "KeyguardRestrictedListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyguardRestrictedListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyguardRestrictedListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardRestrictedListPreference;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-ltz p2, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-static {v0, p2}, Lcom/android/settings/KeyguardRestrictedListPreference;->-$$Nest$mgetRestrictedItemForEntryValue(Lcom/android/settings/KeyguardRestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, v0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$2;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 158
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackKeyguardTimeoutSetEvent(J)V

    .line 160
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method
