.class Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment$1;
.super Ljava/lang/Object;
.source "LockSecureAfterTimeout.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment$1;->this$0:Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 52
    iget-object p2, p0, Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment$1;->this$0:Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "enable_lock_screen_secure_after_timeout"

    .line 52
    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 54
    iget-object p0, p0, Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment$1;->this$0:Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;

    invoke-static {p0}, Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;->-$$Nest$fgetmPrefs(Lcom/android/settings/LockSecureAfterTimeout$LockSecureAfterTimeoutFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    .line 55
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return v0
.end method
