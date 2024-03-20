.class public final Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mIsPukScreenAvailable:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x1110164    # @android:bool/config_enhanced_iwlan_handover_check

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 8
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    .line 12
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x3

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 9
    move-result v0

    .line 12
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimBindEnable:Z

    .line 19
    if-nez v0, :cond_0

    .line 21
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 23
    return-object p0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    .line 27
    move-result-object v2

    .line 30
    move v3, v0

    .line 31
    :goto_0
    move-object v4, v2

    .line 32
    check-cast v4, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v5

    .line 38
    if-ge v3, v5, :cond_3

    .line 39
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 44
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 45
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 47
    move-result v4

    .line 50
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 51
    move-result v5

    .line 54
    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    .line 55
    move-result v6

    .line 58
    const/4 v7, 0x2

    .line 59
    if-ne v7, v6, :cond_2

    .line 60
    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockTrackSimStates:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 67
    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 68
    if-nez v5, :cond_1

    .line 70
    move v5, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 74
    :goto_1
    const/4 v6, 0x5

    .line 76
    if-eq v5, v6, :cond_2

    .line 77
    goto :goto_2

    .line 79
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    const/4 v4, -0x1

    .line 83
    :goto_2
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 84
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    iget-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimBindEnable:Z

    .line 90
    if-nez v0, :cond_4

    .line 92
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 94
    return-object p0

    .line 96
    :cond_4
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;

    .line 97
    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;I)V

    .line 99
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 102
    move-result-object p0

    .line 105
    check-cast p0, Ljava/lang/Integer;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 108
    move-result p0

    .line 111
    if-eqz p0, :cond_9

    .line 112
    const/high16 p1, 0x10000

    .line 114
    if-eq p0, p1, :cond_8

    .line 116
    const/high16 p1, 0x20000

    .line 118
    if-eq p0, p1, :cond_7

    .line 120
    const/high16 p1, 0x30000

    .line 122
    if-eq p0, p1, :cond_7

    .line 124
    const/high16 p1, 0x40000

    .line 126
    if-eq p0, p1, :cond_6

    .line 128
    const/high16 p1, 0x50000

    .line 130
    if-eq p0, p1, :cond_6

    .line 132
    const/high16 p1, 0x60000

    .line 134
    if-eq p0, p1, :cond_6

    .line 136
    const/high16 p1, 0x80000

    .line 138
    if-ne p0, p1, :cond_5

    .line 140
    goto :goto_3

    .line 142
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    const-string v0, "Unknown security quality:"

    .line 145
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p1

    .line 154
    :cond_6
    :goto_3
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 155
    return-object p0

    .line 157
    :cond_7
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 158
    return-object p0

    .line 160
    :cond_8
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 161
    return-object p0

    .line 163
    :cond_9
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 164
    return-object p0
    .line 166
.end method
