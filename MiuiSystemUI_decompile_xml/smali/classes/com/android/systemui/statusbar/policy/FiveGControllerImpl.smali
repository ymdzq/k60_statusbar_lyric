.class public final Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

.field public final mFiveGServiceStates:Landroid/util/SparseArray;

.field public final mMobileSignalController:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mMobileSignalController:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mFiveGServiceStates:Landroid/util/SparseArray;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mContext:Landroid/content/Context;

    .line 19
    const/4 p1, 0x0

    .line 21
    :goto_0
    const/4 v0, 0x2

    .line 22
    if-ge p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mFiveGServiceStates:Landroid/util/SparseArray;

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 27
    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;

    .line 42
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;-><init>(Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;)V

    .line 44
    invoke-direct {p1, v0, p2, v1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 50
    return-void
    .line 52
.end method


# virtual methods
.method public final isConnectedOnSaMode(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mFiveGServiceStates:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 8
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 13
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 18
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 20
    if-eq p0, v0, :cond_0

    .line 22
    move p0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, p1

    .line 26
    :goto_0
    if-eqz p0, :cond_1

    .line 27
    move p1, v1

    .line 29
    :cond_1
    return p1
    .line 30
.end method
