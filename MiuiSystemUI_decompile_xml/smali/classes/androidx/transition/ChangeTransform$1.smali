.class public final Landroidx/transition/ChangeTransform$1;
.super Landroid/util/Property;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/transition/ChangeTransform$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p3, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/transition/ChangeTransform$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 9
    return-object v0

    .line 11
    :goto_0
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 12
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Landroidx/transition/ChangeTransform$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 8
    check-cast p2, [F

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    array-length p0, p2

    .line 15
    const/4 v0, 0x0

    .line 16
    iget-object v1, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 17
    invoke-static {p2, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 22
    return-void

    .line 25
    :goto_0
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 26
    check-cast p2, Landroid/graphics/PointF;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 33
    iput p0, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 35
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 37
    iput p0, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 39
    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 41
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method
