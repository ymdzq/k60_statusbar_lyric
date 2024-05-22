.class public final Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 10
    const/4 v0, 0x0

    .line 12
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 13
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    .line 15
    return-void
    .line 18
.end method
