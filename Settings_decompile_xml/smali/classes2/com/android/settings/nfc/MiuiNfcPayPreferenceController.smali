.class public Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiNfcPayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/nfc/NfcPaymentPreference$Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;
    }
.end annotation


# static fields
.field private static final ESECOMPONENT:Landroid/content/ComponentName;

.field private static final KEY:Ljava/lang/String; = "nfc_payment"

.field private static final ROUTE_ESE:I = 0x1

.field private static final ROUTE_HOST:I = 0x0

.field private static final ROUTE_UICC:I = 0x2

.field private static final SIMCOMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "NfcPaymentController"


# instance fields
.field private labels:[Ljava/lang/String;

.field private final mAdapter:Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;

.field private mGetSeRouting:Ljava/lang/reflect/Method;

.field private mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPreference:Lmiuix/preference/DropDownPreference;

.field private mSetSeRouting:Ljava/lang/reflect/Method;

.field private mSettingsButtonView:Landroid/widget/ImageView;

.field private selectedPosition:I

.field private summaries:[Ljava/lang/String;

.field private valueIndex:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPaymentBackend(Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.nfc.cardemulation.ESEWalletDummyService"

    const-string v2, "com.android.nfc"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->ESECOMPONENT:Landroid/content/ComponentName;

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.nfc.cardemulation.SIMWalletDummyService"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->SIMCOMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    new-instance p2, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mAdapter:Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;

    :try_start_0
    const-string p1, "com.xiaomi.nfc.MiNfcAdapter"

    .line 94
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    .line 95
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

    const-string v0, "getSeRouting"

    new-array v1, v2, [Ljava/lang/Class;

    .line 96
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mGetSeRouting:Ljava/lang/reflect/Method;

    const-string/jumbo v0, "setSeRouting"

    new-array p2, p2, [Ljava/lang/Class;

    .line 97
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mSetSeRouting:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MiNfcAdapter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NfcPaymentController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getLabels()[Ljava/lang/String;
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 290
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v3, :cond_3

    .line 292
    iget-object v4, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 293
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    sget-object v5, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->ESECOMPONENT:Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->mi_wallet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    sget-boolean v5, Lcom/android/settings/RegionUtils;->IS_JP:Z

    if-eqz v5, :cond_0

    .line 297
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->felica_wallet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 298
    :cond_0
    sget-boolean v5, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v5, :cond_1

    .line 299
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->se_in_ese:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :cond_1
    :goto_1
    sget-object v5, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->SIMCOMPONENT:Landroid/content/ComponentName;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sim_wallet:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    :cond_2
    aput-object v4, v1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSeRoute()I
    .locals 5

    const/4 v0, 0x1

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mGetSeRouting:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

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
    const-string p0, "NfcPaymentController"

    const-string v1, "Failed to invoke NfcSeRoute.getSeRouting()"

    .line 485
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getSelectAppIndex()I
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 352
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 353
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 354
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 355
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getSummaries()[Ljava/lang/String;
    .locals 7

    .line 315
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 316
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 318
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 319
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v3, :cond_3

    .line 320
    iget-object v4, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 321
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    sget-object v5, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->ESECOMPONENT:Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->mi_wallet_desc:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    sget-boolean v5, Lcom/android/settings/RegionUtils;->IS_JP:Z

    if-eqz v5, :cond_0

    .line 325
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->felica_wallet_desc:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 326
    :cond_0
    sget-boolean v5, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v5, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->se_in_ese_desc:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    :cond_1
    :goto_1
    sget-object v5, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->SIMCOMPONENT:Landroid/content/ComponentName;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sim_wallet_desc:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    :cond_2
    aput-object v4, v1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValueIndex([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 342
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    array-length p0, p1

    new-array p1, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 1

    .line 466
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 467
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method private setSeRoute(I)V
    .locals 5

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mSetSeRouting:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mMiNfcAdapterConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

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
    const-string p0, "NfcPaymentController"

    const-string p1, "Failed to invoke NfcSeRoute.setSeRouting()"

    .line 502
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePaymentApp()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getLabels()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->labels:[Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getSummaries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->summaries:[Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->labels:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getValueIndex([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->valueIndex:[Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->labels:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->summaries:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v0

    array-length v1, v1

    if-ne v2, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->valueIndex:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->summaries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setSummaries([Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->updatePreference()V

    :cond_2
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getSelectAppIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->selectedPosition:I

    .line 246
    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->labels:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->summaries:[Ljava/lang/String;

    if-eqz v2, :cond_0

    array-length v1, v1

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 248
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method private updateSettingsVisibility()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 277
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->updatePaymentApp()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 163
    :cond_2
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 164
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->ESECOMPONENT:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 196
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->miui_nfc_mi_pay_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 178
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 219
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NfcPaymentController"

    const-string p1, "Settings activity not found."

    .line 223
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->updatePaymentApp()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "nfc_payment"

    .line 230
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 231
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 232
    iget-object p2, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p2}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p2

    if-ltz p1, :cond_0

    .line 233
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 234
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    goto :goto_0

    .line 236
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArrayIndexOutOfBoundsException: curIndex --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NfcPaymentController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string/jumbo v0, "onResume"

    const-string v1, "NfcPaymentController"

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->updatePreference()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Current preferred payment Service is null"

    .line 114
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_0
    sget-object v2, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->ESECOMPONENT:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getSeRoute()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const-string v0, "correct se route to 1"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, v2}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->setSeRoute(I)V

    goto :goto_0

    .line 123
    :cond_1
    sget-object v2, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->SIMCOMPONENT:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getSeRoute()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const-string v0, "correct se route to 2"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v2}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->setSeRoute(I)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->getSeRoute()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "correct se route to 0"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->setSeRoute(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->unregisterCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 186
    iget-object v1, p0, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->mAdapter:Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/nfc/MiuiNfcPayPreferenceController;->updateSettingsVisibility()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
