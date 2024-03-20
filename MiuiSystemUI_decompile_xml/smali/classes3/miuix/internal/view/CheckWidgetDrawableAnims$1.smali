.class public final Lmiuix/internal/view/CheckWidgetDrawableAnims$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    .line 1
    iget p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 10
    iget p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 12
    iput p0, p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
