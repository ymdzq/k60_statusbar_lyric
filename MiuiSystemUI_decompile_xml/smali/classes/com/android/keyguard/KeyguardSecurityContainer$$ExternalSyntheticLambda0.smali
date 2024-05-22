.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Landroid/view/MotionEvent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Landroid/view/MotionEvent;

    .line 8
    check-cast p1, Lcom/android/systemui/Gefingerpoken;

    .line 10
    sget v0, Lcom/android/keyguard/KeyguardSecurityContainer;->MIN_BACK_SCALE:F

    .line 12
    invoke-interface {p1, p0}, Lcom/android/systemui/Gefingerpoken;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Landroid/view/MotionEvent;

    .line 19
    check-cast p1, Lcom/android/systemui/Gefingerpoken;

    .line 21
    sget v0, Lcom/android/keyguard/KeyguardSecurityContainer;->MIN_BACK_SCALE:F

    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
