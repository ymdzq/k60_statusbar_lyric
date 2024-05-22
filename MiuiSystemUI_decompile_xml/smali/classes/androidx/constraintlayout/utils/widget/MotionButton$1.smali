.class public final Landroidx/constraintlayout/utils/widget/MotionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/constraintlayout/utils/widget/MotionButton;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/utils/widget/MotionButton;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 4
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 8
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    .line 10
    move-result v3

    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 14
    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    .line 16
    move-result v4

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 25
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 27
    mul-float/2addr p1, p0

    .line 29
    const/high16 p0, 0x40000000    # 2.0f

    .line 30
    div-float v5, p1, p0

    .line 32
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v0, p2

    .line 36
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 37
    return-void

    .line 40
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 41
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    .line 43
    move-result v3

    .line 46
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 47
    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    .line 49
    move-result v4

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 55
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 57
    move-object v0, p2

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 60
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 64
.end method
