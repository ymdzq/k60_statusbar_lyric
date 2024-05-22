.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/view/View;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    .line 14
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 21
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mOnLayoutChangeListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->updateTouchRegions()V

    .line 29
    return-void

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 33
    check-cast v0, Lcom/android/systemui/touch/TouchInsetManager;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 37
    invoke-virtual {v0, p0}, Lcom/android/systemui/touch/TouchInsetManager;->recycleRegions(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V

    .line 39
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    .line 42
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager;->updateTouchInsets()V

    .line 47
    return-void

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 53
    check-cast p0, Landroid/view/View;

    .line 55
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    .line 57
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mOnLayoutChangeListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 64
    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->updateTouchRegions()V

    .line 72
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 76
.end method
