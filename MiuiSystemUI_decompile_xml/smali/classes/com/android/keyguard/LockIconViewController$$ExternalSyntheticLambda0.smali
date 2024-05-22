.class public final synthetic Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/LockIconViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/LockIconViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/LockIconViewController;

    .line 8
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 15
    iput p1, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    .line 17
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 19
    check-cast v0, Lcom/android/keyguard/LockIconView;

    .line 21
    iput p1, v0, Lcom/android/keyguard/LockIconView;->mDozeAmount:F

    .line 23
    invoke-virtual {v0}, Lcom/android/keyguard/LockIconView;->updateColorAndBackgroundVisibility()V

    .line 25
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateBurnInOffsets()V

    .line 28
    return-void

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/LockIconViewController;

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p1

    .line 42
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateBurnInOffsets()V

    .line 45
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    .line 48
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 52
.end method
