.class public final Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->$r8$classId:I

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/widget/PasswordTextViewForPIN;

    .line 12
    iget v0, v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mMaxYOffset:F

    .line 14
    neg-float v0, v0

    .line 16
    invoke-static {p0, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->-$$Nest$mstartDotYOffsetAnimationImpl(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;F)V

    .line 17
    return-void

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->startDotScaleAnimation(FJ)V

    .line 25
    return-void

    .line 28
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 29
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->startDotScaleAnimation(FJ)V

    .line 33
    return-void

    .line 36
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 37
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->-$$Nest$mstartDotYOffsetAnimationImpl(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;F)V

    .line 40
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method
