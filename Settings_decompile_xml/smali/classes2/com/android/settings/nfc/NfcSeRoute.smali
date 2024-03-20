.class public Lcom/android/settings/nfc/NfcSeRoute;
.super Ljava/lang/Object;
.source "NfcSeRoute.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRouteValue:Ljava/lang/String;

.field private mEntries:[Ljava/lang/String;

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mGetSeRouting:Ljava/lang/reflect/Method;

.field private mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

.field private mPreference:Landroidx/preference/ListPreference;

.field private mSetSeRouting:Ljava/lang/reflect/Method;

.field private mSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroidx/preference/ListPreference;)V
    .locals 4

    const-string p2, "NfcSeRoute"

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mCurrentRouteValue:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->isNfcSeRouteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    :try_start_0
    const-string p1, "com.xiaomi.nfc.MiNfcAdapter"

    .line 71
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 72
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

    const-string v1, "getSeRouting"

    new-array v2, v3, [Ljava/lang/Class;

    .line 73
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mGetSeRouting:Ljava/lang/reflect/Method;

    const-string/jumbo v1, "setSeRouting"

    new-array v0, v0, [Ljava/lang/Class;

    .line 74
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSetSeRouting:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiNfcAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    invoke-virtual {p3}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entryValues array:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    iput-object p3, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    .line 86
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget-boolean p2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p2, :cond_2

    sget p2, Lcom/android/settings/R$string;->nfc_se_route_title:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/android/settings/R$string;->nfc_se_wallet_title:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->getEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntries:[Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->updatePreference()V

    return-void
.end method

.method private getCurrentIndex(I)I
    .locals 1

    if-gez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v0, "ESE"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v0, "HCE"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_1
    if-gez p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v0, "UICC"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_2
    if-gez p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v0, "UICC1"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_3
    if-gez p1, :cond_4

    .line 204
    iget-object p0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string p1, "UICC2"

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_4
    return p1
.end method

.method private getEntries()[Ljava/lang/String;
    .locals 10

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 271
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/R$string;->se_route_ese:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->se_wallet_ese:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->se_wallet_hce:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget-boolean v4, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/android/settings/R$string;->current_use_ese:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/android/settings/R$string;->current_use_ese_wallet:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    iget-object v4, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->current_use_hce_wallet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 275
    iget-object v5, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->se_route_default:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->current_use_default_wallet:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 277
    sget-boolean v7, Lcom/android/settings/RegionUtils;->IS_JP:Z

    if-eqz v7, :cond_2

    move-object v1, v5

    :cond_2
    if-eqz v7, :cond_3

    move-object v3, v6

    .line 280
    :cond_3
    iget-object v5, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    if-nez v5, :cond_4

    const-string p0, "NfcSeRoute"

    const-string v0, "entryValues array is null"

    .line 281
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 285
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ESE"

    .line 286
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v7, "HCE"

    .line 289
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v7, "UICC"

    .line 292
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 293
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->se_wallet_uicc:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->current_use_uicc_wallet:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v7, "UICC1"

    .line 295
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 296
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->se_wallet_uicc:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->current_use_uicc_wallet:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v7, "UICC2"

    .line 298
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 299
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->se_wallet_uicc:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v6, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->current_use_uicc_wallet:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 303
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getMappingSeRoute(Ljava/lang/String;)I
    .locals 1

    const-string p0, "HCE"

    .line 213
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const-string p0, "ESE"

    .line 215
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    :cond_1
    move p0, v0

    goto :goto_1

    :cond_2
    const-string p0, "UICC"

    .line 217
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "UICC1"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "UICC2"

    .line 219
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private getSeRoute()I
    .locals 5

    const/4 v0, 0x1

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mGetSeRouting:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const-string p0, "NfcSeRoute"

    const-string v1, "Failed to invoke NfcSeRoute.getSeRouting()"

    .line 248
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isNfcSeRouteSupported()Z
    .locals 2

    const-string/jumbo p0, "support_se_route"

    const/4 v0, 0x0

    .line 226
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "NfcSeRoute"

    const-string v1, "NfcSeRoute is not supported"

    .line 229
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setSeRoute(I)V
    .locals 5

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSetSeRouting:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const-string p0, "NfcSeRoute"

    const-string p1, "Failed to invoke NfcSeRoute.setSeRouting()"

    .line 265
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreference()V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntries:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NfcSeRoute"

    if-eqz v0, :cond_8

    array-length v3, v0

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mCurrentRouteValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcSeRoute;->mCurrentRouteValue:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->getSeRoute()I

    move-result v0

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get wallet as :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    const-string v4, "ESE"

    if-eq v0, v3, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v4, "UICC2"

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v4, "UICC"

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_6

    .line 143
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v4, "UICC1"

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    const-string v4, "HCE"

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 155
    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcSeRoute;->getCurrentIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    const-string/jumbo v0, "updatePreference called! not found any se."

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 161
    :cond_7
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mEntryValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/NfcSeRoute;->getMappingSeRoute(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/NfcSeRoute;->setSeRoute(I)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mSummaries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_8
    :goto_1
    const-string/jumbo v0, "updatePreference called! entries array is null"

    .line 119
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->isNfcSeRouteSupported()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 172
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mCurrentRouteValue:Ljava/lang/String;

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set wallet before :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mCurrentRouteValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NfcSeRoute"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mCurrentRouteValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcSeRoute;->getMappingSeRoute(Ljava/lang/String;)I

    move-result p1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set wallet as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcSeRoute;->setSeRoute(I)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->updatePreference()V

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->isNfcSeRouteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->updatePreference()V

    :cond_0
    return-void
.end method
