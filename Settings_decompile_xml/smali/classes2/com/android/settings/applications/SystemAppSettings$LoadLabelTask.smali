.class public final Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;
.super Landroid/os/AsyncTask;
.source "SystemAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/SystemAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadLabelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/SystemAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/SystemAppSettings;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private addPreference(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    new-instance v1, Lcom/android/settings/widget/FixedIconSizePreference;

    iget-object v2, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {v2}, Lcom/android/settings/applications/SystemAppSettings;->access$100(Lcom/android/settings/applications/SystemAppSettings;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/FixedIconSizePreference;-><init>(Landroid/content/Context;Z)V

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 220
    iget-object v2, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 221
    iget-object v2, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {v2}, Lcom/android/settings/applications/SystemAppSettings;->access$200(Lcom/android/settings/applications/SystemAppSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings/applications/SystemAppSettings;->-$$Nest$mgetAppIcon(Lcom/android/settings/applications/SystemAppSettings;Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateHeader(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 1

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 180
    iget-object p1, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 201
    iget-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {p1}, Lcom/android/settings/applications/SystemAppSettings;->-$$Nest$fgetmCls2SystemHeader(Lcom/android/settings/applications/SystemAppSettings;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {p1}, Lcom/android/settings/applications/SystemAppSettings;->-$$Nest$fgetmCls2SystemHeader(Lcom/android/settings/applications/SystemAppSettings;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {p1}, Lcom/android/settings/applications/SystemAppSettings;->-$$Nest$fgetmCls2SystemHeader(Lcom/android/settings/applications/SystemAppSettings;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 204
    iget-object v2, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {v2}, Lcom/android/settings/applications/SystemAppSettings;->access$000(Lcom/android/settings/applications/SystemAppSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->updateHeader(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-static {p1}, Lcom/android/settings/applications/SystemAppSettings;->-$$Nest$fgetmCls2SystemHeader(Lcom/android/settings/applications/SystemAppSettings;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->addPreference(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 192
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 193
    iget-object p0, p0, Lcom/android/settings/applications/SystemAppSettings$LoadLabelTask;->this$0:Lcom/android/settings/applications/SystemAppSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method
