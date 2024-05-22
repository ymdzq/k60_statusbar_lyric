.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1$1;->this$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1$1;->this$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChangingPending:Z

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 13
    const/4 p0, 0x1

    .line 16
    return p0
    .line 17
.end method
