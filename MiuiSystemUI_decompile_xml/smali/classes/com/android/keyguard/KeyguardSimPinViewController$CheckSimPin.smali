.class public abstract Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;
.super Ljava/lang/Thread;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final mSubId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mPin:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "call supplyIccLockPin(subid="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

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
    const-string v1, "KeyguardSimPinView"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 28
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 34
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mPin:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 47
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 49
    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 51
    new-instance v2, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;

    .line 53
    const/4 v3, 0x1

    .line 55
    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;Landroid/telephony/PinResult;I)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
    .line 62
.end method
