.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    sget v1, Lcom/android/systemui/navigationbar/NavigationBarView;->$r8$clinit:I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p0

    .line 22
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 25
    return-void

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 31
    check-cast p0, Landroid/graphics/Rect;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 39
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
