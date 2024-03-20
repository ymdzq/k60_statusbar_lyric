.class Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;
.super Landroid/os/AsyncTask;
.source "MiuiManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiManageAccountsSettings;->loadOtherAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroidx/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 313
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v1, v1, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v1, v1, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v1

    .line 326
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    const-string v6, "com.xiaomi"

    .line 328
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.xiaomi.unactivated"

    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    .line 333
    :cond_1
    iget-object v6, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v6, v6, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v6, v0, v5}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 334
    invoke-static {v5}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->isUserVisible(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    .line 338
    :cond_2
    new-instance v7, Landroidx/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {v8}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->access$000(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v9, v9, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v8

    .line 340
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v9, v9, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 341
    invoke-virtual {v9, v5}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v10, v3

    .line 342
    :goto_1
    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v11, "account_type"

    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v11, v11, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    const-string v12, "UserHandle"

    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v10, :cond_4

    .line 345
    const-class v9, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "account"

    aget-object v8, v8, v3

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 348
    :cond_4
    const-class v8, Lcom/android/settings/accounts/MiuiManageAccounts;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 350
    :goto_2
    iget-object v8, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    iget-object v8, v8, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v8, v0, v5}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 353
    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 356
    :cond_5
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 358
    sget v5, Lcom/android/settings/R$layout;->preference_system_app:I

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 359
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 362
    :cond_7
    invoke-static {}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$sfgetPREFERENCE_COMPARATOR()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 313
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 368
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$fgetmOtherAccountCategory(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$fgetmOtherAccountCategory(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 372
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$fgetmOtherAccountCategory(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 374
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$fgetmOtherAccountCategory(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
