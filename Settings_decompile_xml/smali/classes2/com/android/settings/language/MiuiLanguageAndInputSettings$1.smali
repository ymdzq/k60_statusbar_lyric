.class Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;
.super Ljava/lang/Object;
.source "MiuiLanguageAndInputSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateUserDictionaryPreference(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

.field final synthetic val$localeSet:Ljava/util/TreeSet;


# direct methods
.method constructor <init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Ljava/util/TreeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    iput-object p2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 460
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 462
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    const/4 v6, 0x1

    if-gt p1, v6, :cond_1

    .line 463
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 472
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "locale"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    const-class p1, Lcom/android/settings/inputmethod/UserDictionarySettings;

    goto :goto_0

    .line 476
    :cond_1
    const-class p1, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$1;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    .line 479
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, v1

    .line 478
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v6
.end method
