.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 10
    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 14
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateBackAnimationThresholds()V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLightBarControllerProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 29
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    .line 33
    iget-object p0, p1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 36
    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 40
    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    .line 42
    :cond_0
    return-void

    .line 44
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 45
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 47
    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    .line 49
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    .line 51
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/Pip;->addPipExclusionBoundsChangeListener(Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;)V

    .line 53
    return-void

    .line 56
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 57
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 59
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHanded;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V

    .line 63
    return-void

    .line 66
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 67
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 69
    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    .line 71
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    .line 73
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/Pip;->removePipExclusionBoundsChangeListener(Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;)V

    .line 75
    return-void

    .line 78
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 79
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    .line 83
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    .line 87
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 92
.end method
