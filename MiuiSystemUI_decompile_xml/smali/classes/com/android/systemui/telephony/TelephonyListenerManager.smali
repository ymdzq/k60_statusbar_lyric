.class public final Lcom/android/systemui/telephony/TelephonyListenerManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mListening:Z

.field public final mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/telephony/TelephonyCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    .line 6
    iput-object p1, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final updateListening()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/android/systemui/telephony/TelephonyCallback;->hasAnyListeners()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    .line 17
    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {v1, p0, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/android/systemui/telephony/TelephonyCallback;->hasAnyListeners()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 35
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    .line 39
    :cond_1
    :goto_0
    return-void
    .line 41
.end method
