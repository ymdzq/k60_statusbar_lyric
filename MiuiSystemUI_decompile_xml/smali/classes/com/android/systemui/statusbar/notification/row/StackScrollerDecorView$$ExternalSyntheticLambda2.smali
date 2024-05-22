.class public final synthetic Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->run()V

    .line 10
    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
