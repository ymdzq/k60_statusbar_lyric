.class public Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;
.super Ljava/lang/Object;
.source "TelephonyDisplayInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;
    }
.end annotation


# static fields
.field private static final mDefaultTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;


# instance fields
.field private mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mCallback:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;

.field private mDisplayInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/TelephonyDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;)Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mCallback:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayInfos(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    sput-object v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDefaultTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object p2, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mCallback:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    return-void
.end method

.method private startListening(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 108
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    const/high16 p1, 0x100000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private stopListening(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 113
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 79
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->stopListening(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->startListening(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSubscriptionIds(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 88
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->stopListening(I)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v3, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1, v0}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    new-instance v1, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;-><init>(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;I)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDefaultTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->startListening(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
