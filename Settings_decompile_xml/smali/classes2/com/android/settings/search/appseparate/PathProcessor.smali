.class public Lcom/android/settings/search/appseparate/PathProcessor;
.super Ljava/lang/Object;
.source "PathProcessor.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/search/appseparate/PathProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getIcon(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2

    .line 58
    sget-object v0, Lcom/android/settingslib/search/SettingsTree;->sSettingsEntryToIconMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "drawable"

    const-string v1, "com.android.settings"

    invoke-virtual {p0, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p1
.end method

.method public static process(Landroid/content/Context;Lcom/android/settings/search/appseparate/SearchRawData;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 24
    iget-object v0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object p0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOn:Ljava/lang/String;

    return-object p0

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    iget-object p0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOn:Ljava/lang/String;

    return-object p0

    .line 36
    :cond_1
    sget-object v1, Lcom/android/settingslib/search/SettingsTree;->sSettingsEntryToPathMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-object p0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOn:Ljava/lang/String;

    return-object p0

    .line 44
    :cond_2
    iget v1, p1, Lcom/android/settings/search/appseparate/SearchRawData;->iconResId:I

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v1, p2}, Lcom/android/settings/search/appseparate/PathProcessor;->getIcon(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->iconResId:I

    .line 47
    iget-object p0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->other:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/settings/search/appseparate/SearchRawData;->other:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v0

    .line 53
    :catch_0
    iget-object p0, p1, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOn:Ljava/lang/String;

    return-object p0
.end method
