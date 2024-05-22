.class public final Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1$1;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 18
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
.end method
