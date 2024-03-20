.class Lcom/android/settings/privacy/PrivacyRevocationSettings$2;
.super Lcom/android/settings/privacy/DataTaskLoader;
.source "PrivacyRevocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/PrivacyRevocationSettings;->onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/privacy/DataTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/privacy/PrivacyItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;Landroid/content/Context;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-direct {p0, p2}, Lcom/android/settings/privacy/DataTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-static {}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$sfgetPACKAGE_ARRAY()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 160
    invoke-static {}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$sfgetPACKAGE_ARRAY()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 161
    iget-object v3, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-static {v4}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$misKddiVersion(Lcom/android/settings/privacy/PrivacyRevocationSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    invoke-static {v3, v2}, Lcom/android/settings/privacy/PrivacyPackageUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, v2}, Lcom/android/settings/privacy/PrivacyPackageUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.android.calendar"

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.xiaomi.calendar"

    .line 168
    invoke-static {v3, v4}, Lcom/android/settings/privacy/PrivacyPackageUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    invoke-static {v3, v4}, Lcom/android/settings/privacy/PrivacyPackageUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    new-instance v3, Lcom/android/settings/privacy/PrivacyItem;

    invoke-direct {v3}, Lcom/android/settings/privacy/PrivacyItem;-><init>()V

    .line 173
    iput-object v2, v3, Lcom/android/settings/privacy/PrivacyItem;->packageName:Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/privacy/PrivacyPackageUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/privacy/PrivacyItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v4, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/privacy/PrivacyPackageUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/privacy/PrivacyItem;->label:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->-$$Nest$misEnabled(Lcom/android/settings/privacy/PrivacyRevocationSettings;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/settings/privacy/PrivacyItem;->enable:Z

    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
