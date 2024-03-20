.class public Lcom/android/settings/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# static fields
.field public static ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SearchResult"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string/jumbo v1, "sim_pin_toggle"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string/jumbo v1, "sim_pin_change"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string/jumbo v1, "sim_radio_off"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string/jumbo v1, "wallpaper_setting_title"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "application_mode_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "fold_game_adaptation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "close_lid_display_settings_title"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "device_ime_keyboard_fold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "device_ime_keyboard_pad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "freeform_guide_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "beauty_fc_assistant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "conversation_assistant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string v1, "kid_space_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    const-string/jumbo v1, "miui_desktop_mode_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBundleEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    .line 136
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 140
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    move-object v5, v1

    check-cast v5, Landroid/os/Bundle;

    .line 143
    invoke-static {v4, v5}, Lcom/android/settings/search/SearchResult;->checkBundleEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    .line 145
    :cond_2
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static checkIntentEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/search/SearchResult;->checkBundleEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSearchExcludeMap()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ro.radio.noril"

    const/4 v1, 0x0

    .line 154
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.miui.antispam.ui.activity.MainActivity"

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "miui.intent.action.SET_FIREWALL"

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.antispam.ui.activity.AntiSpamNewSettingsActivity"

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.antispam.action.ANTISPAM_SETTINGS"

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static removeExcludeItem(Ljava/util/HashSet;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SearchResultItem;

    .line 171
    iget-object v2, v1, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getSearchResultList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    invoke-static {p2}, Lcom/android/settings/search/provider/SettingsProvider;->getSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/search/Function;->FUNCTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 61
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    if-nez p0, :cond_0

    return-object p2

    .line 65
    :cond_0
    check-cast p0, Landroid/database/CursorWrapper;

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/search/RankedCursor;

    const/4 v0, 0x0

    move-object v1, v0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/search/RankedCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "resource"

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/search/RankedCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent"

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 70
    invoke-virtual {p0, v4}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-nez v3, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/16 v4, 0x10

    .line 78
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 81
    :cond_3
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    invoke-static {v3, v1}, Lcom/android/settings/search/SearchResult;->checkIntentEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/settings/search/SearchResult;->ENABLED_REDUNDANT_ENTRIES_SET:Ljava/util/Set;

    .line 83
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, "ABANDON_FLAG"

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const-string v4, "com.miui.cloudservice"

    .line 89
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveMiCloud(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    .line 95
    :cond_6
    new-instance v0, Lcom/android/settings/search/SearchResultItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchResultItem;-><init>(I)V

    const-string/jumbo v1, "package"

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->pkg:Ljava/lang/String;

    const-string/jumbo v1, "preference_key"

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->preferenceKey:Ljava/lang/String;

    .line 98
    iput-object v2, v0, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    const-string/jumbo v1, "title"

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    const-string v1, "category"

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->category:Ljava/lang/String;

    const-string/jumbo v1, "path"

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    const-string v1, "keywords"

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->keywords:Ljava/lang/String;

    const-string/jumbo v1, "summary"

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    const-string v1, "icon"

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->icon:Ljava/lang/String;

    const-string v1, "is_checkbox"

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/search/SearchResultItem;->checkbox:Z

    .line 107
    iput-object v3, v0, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "status"

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/RankedCursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/search/SearchResultItem;->status:I

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/search/RankedCursor;->getScore()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings/search/SearchResultItem;->score:D

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->sim_management_title:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->network_settings_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    iget-object v5, v0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 114
    iget-object v5, v0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    .line 115
    iget-object v5, v0, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    .line 116
    iget-object v5, v0, Lcom/android/settings/search/SearchResultItem;->category:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->category:Ljava/lang/String;

    .line 118
    :cond_7
    iget-object v1, v0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/search/SearchResultItem;->getGroupInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    .line 119
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_0

    .line 121
    :cond_8
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 122
    sget-object p1, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_9
    invoke-virtual {p0}, Lcom/android/settingslib/search/RankedCursor;->close()V

    return-object p2
.end method
