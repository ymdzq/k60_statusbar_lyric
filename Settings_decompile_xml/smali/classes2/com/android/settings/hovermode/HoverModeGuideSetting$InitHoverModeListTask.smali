.class Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;
.super Landroid/os/AsyncTask;
.source "HoverModeGuideSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hovermode/HoverModeGuideSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitHoverModeListTask"
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
.field final synthetic this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;


# direct methods
.method public static synthetic $r8$lambda$_WtMdhyipXQ1EbZd4NF2s9HTsiM(Ljava/util/Comparator;Lcom/android/settings/hovermode/HoverModeAppItemInfo;Lcom/android/settings/hovermode/HoverModeAppItemInfo;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->lambda$updateMiuiHoverModeApps$0(Ljava/util/Comparator;Lcom/android/settings/hovermode/HoverModeAppItemInfo;Lcom/android/settings/hovermode/HoverModeAppItemInfo;)I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/settings/hovermode/HoverModeGuideSetting;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/hovermode/HoverModeGuideSetting;Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;-><init>(Lcom/android/settings/hovermode/HoverModeGuideSetting;)V

    return-void
.end method

.method private addPreference()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmAppListPreferenceCategory(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->hover_mode_support_apps:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    .line 88
    new-instance v2, Lcom/android/settings/widget/HoverModeIconSizePreference;

    iget-object v3, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v3}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->access$000(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/widget/HoverModeIconSizePreference;-><init>(Landroid/content/Context;Z)V

    .line 89
    invoke-virtual {v1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v1}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmAppListPreferenceCategory(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$updateMiuiHoverModeApps$0(Ljava/util/Comparator;Lcom/android/settings/hovermode/HoverModeAppItemInfo;Lcom/android/settings/hovermode/HoverModeAppItemInfo;)I
    .locals 0

    .line 116
    invoke-virtual {p1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private updateMiuiHoverModeApps()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$mgetMiuiHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/Set;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v1}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v1}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmPackageManager(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v2}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmPackageManager(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v2}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    iget-object v4, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v4}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmPackageManager(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v5}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmPackageManager(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 109
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 108
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 116
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {p0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmHoverModeApps(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->updateMiuiHoverModeApps()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->addPreference()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmAppListPreferenceCategory(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->this$0:Lcom/android/settings/hovermode/HoverModeGuideSetting;

    invoke-static {p0}, Lcom/android/settings/hovermode/HoverModeGuideSetting;->-$$Nest$fgetmAppListPreferenceCategory(Lcom/android/settings/hovermode/HoverModeGuideSetting;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method
