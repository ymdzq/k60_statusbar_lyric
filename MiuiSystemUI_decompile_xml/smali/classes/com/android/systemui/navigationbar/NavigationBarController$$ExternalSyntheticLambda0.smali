.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result v0

    .line 16
    if-ge v1, v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 25
    if-nez v0, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    return-void

    .line 40
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 41
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 45
    move-result v0

    .line 48
    if-ge v1, v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 57
    if-nez v0, :cond_2

    .line 59
    goto :goto_4

    .line 61
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 62
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    .line 66
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_3

    .line 71
    :cond_3
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method
