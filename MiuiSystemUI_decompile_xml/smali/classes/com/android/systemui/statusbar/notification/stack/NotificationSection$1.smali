.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 12
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 16
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 18
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 20
    return-void

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 25
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 29
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
