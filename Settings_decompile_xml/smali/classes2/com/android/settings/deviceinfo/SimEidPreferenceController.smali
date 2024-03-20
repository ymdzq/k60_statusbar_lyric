.class public final Lcom/android/settings/deviceinfo/SimEidPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SimEidPreferenceController.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/SimEidPreferenceController$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/settings/deviceinfo/SimEidPreferenceController$Companion;

.field private static final QR_CODE_SIZE:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SimEidPreferenceController"


# instance fields
.field private appCompatActivity:Landroidx/fragment/app/FragmentActivity;

.field private eid:Ljava/lang/String;

.field private eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

.field private final eidTitle$delegate:Lkotlin/Lazy;

.field private errorDialog:Lmiuix/appcompat/app/AlertDialog;

.field private final exceptionHandler$delegate:Lkotlin/Lazy;

.field private loadingDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private preference:Landroidx/preference/Preference;

.field private slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->Companion:Lcom/android/settings/deviceinfo/SimEidPreferenceController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, ""

    .line 38
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eid:Ljava/lang/String;

    .line 41
    new-instance p1, Lcom/android/settings/deviceinfo/SimEidPreferenceController$eidTitle$2;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$eidTitle$2;-><init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eidTitle$delegate:Lkotlin/Lazy;

    .line 44
    sget-object p1, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->INSTANCE:Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->exceptionHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEid(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getEid(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEid$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getEidQrCodeImage(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getEidQrCodeImage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEidStatus$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Lcom/android/settings/deviceinfo/simstatus/EidStatus;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    return-object p0
.end method

.method public static final synthetic access$getEidTitle(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getEidTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getErrorDialog$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->errorDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->loadingDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$getTitle(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setEid$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eid:Ljava/lang/String;

    return-void
.end method

.method private final getEid(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEid$2;-><init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getEidQrCodeImage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    new-instance v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEidQrCodeImage$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$getEidQrCodeImage$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getEidTitle()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eidTitle$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getExceptionHandler()Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->exceptionHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-object p0
.end method

.method private final getTitle()Ljava/lang/String;
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "mContext.getString(R.string.status_eid)"

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->status_eid:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_4

    .line 109
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 110
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->eid_multi_sim:I

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mContext.getString(R.str\u2026d_multi_sim, idxSlot + 1)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->status_eid:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->preference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    const-string/jumbo p1, "preference"

    .line 98
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getEidTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 9

    const-string v0, "SimEidPreferenceController"

    const-string/jumbo v1, "ro.vendor.miui.support_esim"

    const/4 v2, 0x0

    .line 71
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 73
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string/jumbo v3, "miui.telephony.TelephonyManagerEx"

    .line 74
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDefault"

    new-array v5, v2, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 76
    invoke-static {}, Lcom/android/settings/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Class;

    .line 78
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ESim region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "isSupportEsimForCountry"

    .line 81
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Boolean"

    .line 81
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 73
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportESimForCountry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v4, v2

    .line 86
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "isSupportESimForCountry: "

    .line 87
    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    return v2
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    const-string/jumbo v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->appCompatActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->getExceptionHandler()Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, p1, v5}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1;-><init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Landroidx/fragment/app/FragmentActivity;Landroidx/preference/Preference;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public final init(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Lcom/android/settings/deviceinfo/simstatus/EidStatus;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    .line 66
    iput-object p2, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->appCompatActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final init(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Lcom/android/settings/deviceinfo/simstatus/EidStatus;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 49
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    .line 50
    iput-object p2, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 52
    new-instance p2, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {p2, p3}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->loading_eid_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->loadingDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 55
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    sget v0, Lcom/android/settings/R$string;->loading_eid_error_title:I

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 57
    sget v0, Lcom/android/settings/R$string;->loading_eid_error_message:I

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 58
    sget v0, Lcom/android/settings/R$string;->loading_eid_error_ok:I

    invoke-virtual {p2, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->errorDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 60
    invoke-virtual {p3}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 51
    :goto_0
    iput-object p3, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->appCompatActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
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

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->loadingDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->errorDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->loadingDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 175
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->errorDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
