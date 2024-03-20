.class public final Lcom/android/keyguard/KeyguardSimPinViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 2
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubIdForSimStateChanged:I

    .line 4
    const/4 p2, 0x5

    .line 6
    if-ne p3, p2, :cond_1

    .line 7
    iget p2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 9
    if-ne p1, p2, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 13
    if-eq p2, p1, :cond_0

    .line 14
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->resetState()V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->resetState()V

    .line 22
    :goto_0
    return-void
    .line 25
.end method
