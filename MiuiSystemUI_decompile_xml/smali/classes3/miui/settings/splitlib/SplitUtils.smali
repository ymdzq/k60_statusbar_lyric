.class public Lmiui/settings/splitlib/SplitUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SETTINGS_MAIN_INTENT:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final SPLIT_PAGE_INTENT_KEY:Ljava/lang/String; = "split_page_intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingsSplitActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lmiui/settings/splitlib/SplitUtils;->getSettingsSplitActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsSplitActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 2
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/high16 p3, 0x10000000

    .line 3
    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    :cond_0
    new-instance p3, Lmiui/settings/splitlib/SplitPageIntent;

    invoke-direct {p3, p1, p2}, Lmiui/settings/splitlib/SplitPageIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "split_page_intent"

    .line 5
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public static getSplitActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    const-string v1, "split_page_intent"

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lmiui/settings/splitlib/SplitPageIntent;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0}, Lmiui/settings/splitlib/SplitPageIntent;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v0
    .line 21
.end method

.method public static startSettingsSplitActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lmiui/settings/splitlib/SplitUtils;->startSettingsSplitActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method public static startSettingsSplitActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lmiui/settings/splitlib/SplitUtils;->getSettingsSplitActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
