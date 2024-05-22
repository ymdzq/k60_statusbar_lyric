.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 5
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 2
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    .line 6
    if-eq p0, v1, :cond_0

    .line 8
    iget-object p0, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 24
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p0, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 35
    move-result v1

    .line 38
    if-ge p0, v1, :cond_2

    .line 39
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 47
    if-nez v1, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 52
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 54
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    .line 56
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    return-void
    .line 62
.end method
