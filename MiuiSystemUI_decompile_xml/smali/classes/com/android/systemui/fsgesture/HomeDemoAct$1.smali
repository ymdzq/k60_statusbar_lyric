.class public final Lcom/android/systemui/fsgesture/HomeDemoAct$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    .line 23
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    aget v2, v0, v1

    .line 28
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 30
    iget-object v3, v3, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 34
    move-result v3

    .line 37
    div-int/lit8 v3, v3, 0x2

    .line 38
    add-int/2addr v3, v2

    .line 40
    aput v3, v0, v1

    .line 41
    const/4 v2, 0x1

    .line 43
    aget v3, v0, v2

    .line 44
    iget-object v4, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 46
    iget-object v4, v4, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v4

    .line 53
    div-int/lit8 v4, v4, 0x2

    .line 54
    add-int/2addr v4, v3

    .line 56
    aput v4, v0, v2

    .line 57
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 61
    if-eqz p0, :cond_0

    .line 63
    aget v0, v0, v1

    .line 65
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDestPivot(II)V

    .line 67
    :cond_0
    return-void

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 82
    const v1, 0x7f0a0786    # @id/recents_first_card

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    .line 93
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 101
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 103
    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsFirstCardBound(Landroid/graphics/Rect;)V

    .line 107
    :cond_1
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 112
.end method
