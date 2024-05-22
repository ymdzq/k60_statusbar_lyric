.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 4
    check-cast p2, Ljava/util/List;

    .line 6
    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v1

    .line 14
    if-ge p2, v1, :cond_1

    .line 15
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 25
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->onMiuiThemeChanged(Z)V

    .line 27
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return-void
    .line 33
.end method
