.class public Lcom/android/settings/search/provider/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;
    }
.end annotation


# static fields
.field public static final ARGS_KEY:Ljava/lang/String; = "key"

.field public static final ARGS_VALUE:Ljava/lang/String; = "value"

.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.settings"

.field public static final FULL_SEARCH_PATH:Ljava/lang/String; = "fullSearch"

.field public static final FUNCTION_FULL_SEARCH:I = 0x1

.field public static final METHOD_LOAD:Ljava/lang/String; = "load"

.field public static final METHOD_RELEASE:Ljava/lang/String; = "release"

.field public static final METHOD_TOGGLE_SWITCH:Ljava/lang/String; = "toggleSwitch"

.field public static final RETURN:Ljava/lang/String; = "return"

.field private static final TAG:Ljava/lang/String; = "SettingsProvider"

.field private static final URI_MATCHER:Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;

    invoke-direct {v0}, Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;-><init>()V

    sput-object v0, Lcom/android/settings/search/provider/SettingsProvider;->URI_MATCHER:Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private changeQuickBall(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method private changeTorch(I)I
    .locals 3

    .line 245
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "torch_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return p1

    :cond_0
    return v0
.end method

.method public static getSearchUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.miui.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private load()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/provider/SettingsTreeHelper;

    return-void
.end method

.method private release()V
    .locals 0

    .line 145
    invoke-static {}, Lcom/android/settings/search/provider/SettingsTreeHelper;->releaseInstance()V

    return-void
.end method

.method private toggleSwitch(Ljava/lang/String;I)I
    .locals 7

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    sget v1, Lcom/android/settings/R$string;->keywords_silent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 159
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Sound;->touchSilentState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    :cond_1
    sget v1, Lcom/android/settings/R$string;->keywords_auto_rotate:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 164
    array-length v3, v1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 165
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Display;->touchRotationLockState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    :cond_3
    sget v1, Lcom/android/settings/R$string;->keywords_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    array-length v3, v1

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    .line 171
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    invoke-static {p2}, Lcom/android/settings/MiuiOptionUtils$Wireless;->touchBluetoothState(I)I

    move-result p0

    return p0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 175
    :cond_5
    sget v1, Lcom/android/settings/R$string;->keywords_wifi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    array-length v3, v1

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_7

    aget-object v6, v1, v5

    .line 177
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Wifi;->touchWLANState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 181
    :cond_7
    sget v1, Lcom/android/settings/R$string;->keywords_data:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 182
    array-length v3, v1

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_9

    aget-object v6, v1, v5

    .line 183
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 184
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Mobile;->touchDataState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 187
    :cond_9
    sget v1, Lcom/android/settings/R$string;->keywords_torch:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 188
    array-length v3, v1

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_b

    aget-object v6, v1, v5

    .line 189
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 190
    invoke-direct {p0, p2}, Lcom/android/settings/search/provider/SettingsProvider;->changeTorch(I)I

    move-result p0

    return p0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 193
    :cond_b
    sget v1, Lcom/android/settings/R$string;->keywords_do_not_disturb:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    array-length v3, v1

    move v5, v4

    :goto_6
    if-ge v5, v3, :cond_d

    aget-object v6, v1, v5

    .line 195
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 196
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$DoNotDisturb;->touchDoNotDisturbState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 199
    :cond_d
    sget v1, Lcom/android/settings/R$string;->keywords_airplane:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 200
    array-length v3, v1

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_f

    aget-object v6, v1, v5

    .line 201
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 202
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Wireless;->touchAirplaneState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 205
    :cond_f
    sget v1, Lcom/android/settings/R$string;->keywords_vibrate:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 206
    array-length v3, v1

    move v5, v4

    :goto_8
    if-ge v5, v3, :cond_11

    aget-object v6, v1, v5

    .line 207
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 208
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Sound;->touchVibrateState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 211
    :cond_11
    sget v1, Lcom/android/settings/R$string;->keywords_gps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    array-length v3, v1

    move v5, v4

    :goto_9
    if-ge v5, v3, :cond_13

    aget-object v6, v1, v5

    .line 213
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 214
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Wireless;->touchGPSState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 217
    :cond_13
    sget v1, Lcom/android/settings/R$string;->keywords_hotspot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    array-length v3, v1

    move v5, v4

    :goto_a
    if-ge v5, v3, :cond_15

    aget-object v6, v1, v5

    .line 219
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 220
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Wifi;->touchHotspotState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 223
    :cond_15
    sget v1, Lcom/android/settings/R$string;->keywords_sync:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    array-length v3, v1

    move v5, v4

    :goto_b
    if-ge v5, v3, :cond_17

    aget-object v6, v1, v5

    .line 225
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 226
    invoke-static {p2}, Lcom/android/settings/MiuiOptionUtils$Account;->touchSyncState(I)I

    move-result p0

    return p0

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 229
    :cond_17
    sget v1, Lcom/android/settings/R$string;->keywords_paper_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 230
    array-length v3, v1

    move v5, v4

    :goto_c
    if-ge v5, v3, :cond_19

    aget-object v6, v1, v5

    .line 231
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 232
    invoke-static {v0, p2}, Lcom/android/settings/MiuiOptionUtils$Display;->touchPaperModeState(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 235
    :cond_19
    sget v1, Lcom/android/settings/R$string;->keywords_quick_ball:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    array-length v1, v0

    :goto_d
    if-ge v4, v1, :cond_1b

    aget-object v2, v0, v4

    .line 237
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 238
    invoke-direct {p0, p2}, Lcom/android/settings/search/provider/SettingsProvider;->changeQuickBall(I)I

    move-result p0

    return p0

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo p2, "toggleSwitch"

    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 130
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "value"

    .line 131
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key"

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, v1, p2}, Lcom/android/settings/search/provider/SettingsProvider;->toggleSwitch(Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p2, "return"

    .line 131
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_1
    const-string p2, "load"

    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/android/settings/search/provider/SettingsProvider;->load()V

    return-object p3

    :cond_2
    const-string/jumbo p2, "release"

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/android/settings/search/provider/SettingsProvider;->release()V

    :cond_3
    return-object p3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 95
    sget-object v0, Lcom/android/settings/search/provider/SettingsProvider;->URI_MATCHER:Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;->match(Landroid/net/Uri;)I

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/provider/SettingsTreeHelper;

    move-result-object p0

    .line 101
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/search/provider/SettingsTreeHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    long-to-double p1, v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/settings/search/provider/SettingsProvider;->URI_MATCHER:Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;->match(Landroid/net/Uri;)I

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/provider/SettingsTreeHelper;

    move-result-object p0

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/settings/search/provider/SettingsTreeHelper;->insert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 65
    sget-object v0, Lcom/android/settings/search/provider/SettingsProvider;->URI_MATCHER:Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/provider/SettingsTreeHelper;

    move-result-object v4

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v10, v3

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 72
    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/search/provider/SettingsTreeHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    long-to-double v1, v1

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 109
    sget-object v0, Lcom/android/settings/search/provider/SettingsProvider;->URI_MATCHER:Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/provider/SettingsProvider$MyUriMatcher;->match(Landroid/net/Uri;)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/provider/SettingsTreeHelper;

    move-result-object p0

    .line 115
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settings/search/provider/SettingsTreeHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    long-to-double p1, v0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
