.class public Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;
.super Ljava/lang/Object;
.source "ContextualAdaptiveSleepSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field static final DEFERRED_TIME_DAYS:J

.field static final PREF_KEY_SETUP_TIME:Ljava/lang/String; = "adaptive_sleep_setup_time"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->DEFERRED_TIME_DAYS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isRecentlySetup()Z
    .locals 6

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->DEFERRED_TIME_DAYS:J

    sub-long/2addr v0, v2

    .line 160
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const-string v2, "adaptive_sleep_slice"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "adaptive_sleep_setup_time"

    const-wide/16 v4, 0x0

    .line 161
    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p0, v4, v0

    if-lez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isTurnedOn()Z
    .locals 2

    .line 140
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_sleep"

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isUserInteracted()Z
    .locals 2

    .line 149
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const-string v0, "adaptive_sleep_slice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "adaptive_sleep_interacted"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->adaptive_sleep_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v2, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->PREF_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/display/ScreenTimeoutSettings;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->PREF_NAME:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x579

    move-object v7, p0

    .line 118
    invoke-static/range {v2 .. v7}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/settings/slices/CustomSliceable;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const-string v1, "adaptive_sleep_slice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "adaptive_sleep_setup_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v4

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->isSettingsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->isUserInteracted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->isRecentlySetup()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->isTurnedOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_adaptive_sleep:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->adaptive_sleep_contextual_slice_title:I

    .line 86
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 87
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->adaptive_sleep_contextual_slice_summary:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 90
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v4, v0, v2, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 94
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v5, p0, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 p0, -0x1

    .line 97
    invoke-virtual {v5, p0}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 99
    invoke-virtual {v5, v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v4
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 127
    sget p0, Lcom/android/settings/R$string;->menu_key_display:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 111
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isSettingsAvailable()Z
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isControllerAvailable(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
