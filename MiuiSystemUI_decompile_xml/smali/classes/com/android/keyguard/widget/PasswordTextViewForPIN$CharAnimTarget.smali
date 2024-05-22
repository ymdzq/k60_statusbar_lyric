.class public final Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharAnimTarget;
.super Lmiuix/animation/IAnimTarget;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCharState:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharAnimTarget;->mCharState:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 5
    const p1, 0x3c23d70a    # 0.01f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final clean()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final getTargetObject()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharAnimTarget;->mCharState:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 2
    return-object p0
    .line 4
.end method
