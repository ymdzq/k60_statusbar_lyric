.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/IRemoteAnimationRunner$Stub;


# direct methods
.method public synthetic constructor <init>(Landroid/view/IRemoteAnimationRunner$Stub;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$0:Landroid/view/IRemoteAnimationRunner$Stub;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$0:Landroid/view/IRemoteAnimationRunner$Stub;

    .line 8
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    :cond_0
    return-void

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$0:Landroid/view/IRemoteAnimationRunner$Stub;

    .line 22
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    .line 24
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->$r8$clinit:I

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
