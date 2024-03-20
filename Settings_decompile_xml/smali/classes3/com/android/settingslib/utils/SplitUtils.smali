.class public Lcom/android/settingslib/utils/SplitUtils;
.super Ljava/lang/Object;
.source "SplitUtils.java"


# static fields
.field private static final UNSPLIT_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUnSplitSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settingslib/utils/SplitUtils;->mUnSplitSet:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settingslib/utils/SplitUtils;->UNSPLIT_PACKAGES:Ljava/util/Set;

    .line 21
    sget-object v1, Lcom/android/settingslib/utils/SplitUtils;->mUnSplitSet:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.app.settings.GoogleSettingsLink"

    const-string v4, "com.google.android.gms"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v1, Lcom/android/settingslib/utils/SplitUtils;->mUnSplitSet:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.app.settings.GoogleSettingsIALink"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v1, Lcom/android/settingslib/utils/SplitUtils;->mUnSplitSet:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.nttdocomo.android.docomoset"

    const-string v4, "com.nttdocomo.android.docomoset.DocomoServiceSetting"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/android/settingslib/utils/SplitUtils;->mUnSplitSet:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.nttdocomo.android.osv"

    const-string v4, "com.nttdocomo.android.osv.StartupActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huawei.hwid"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.amazon.alexa.multimodal.lyra"

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static getIMiuiActivitySplitterImpl(Landroid/app/Activity;)Landroid/app/IMiuiActivitySplitterImpl;
    .locals 1

    if-eqz p0, :cond_1

    .line 40
    invoke-static {}, Lcom/android/settingslib/utils/SplitUtils;->isSplitAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/utils/SplitUtils;->isBaseActivity(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->getDefault(Landroid/app/Activity;Z)Landroid/app/MiuiActivitySplitterImpl;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method protected static isBaseActivity(Landroid/app/Activity;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings.MiuiSettings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSplitAllowed()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSplitMode(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/utils/SplitUtils;->getIMiuiActivitySplitterImpl(Landroid/app/Activity;)Landroid/app/IMiuiActivitySplitterImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 90
    invoke-interface {p0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    :cond_1
    return v0
.end method
