.class public abstract Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;
.super Ljava/lang/Thread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final mPuk:Ljava/lang/String;

.field public final mSubId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "call supplyIccLockPuk(subid="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string v1, "KeyguardSimPukView"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 28
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 34
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->supplyIccLockPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 49
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 51
    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 53
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;

    .line 55
    const/4 v3, 0x1

    .line 57
    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;I)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
    .line 64
.end method
