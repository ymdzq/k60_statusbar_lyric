.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# instance fields
.field public final synthetic f$0:Lcom/android/app/viewcapture/ViewCapture;

.field public final synthetic f$1:Lcom/android/app/viewcapture/ViewCapture$WindowListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/app/viewcapture/SimpleViewCapture;Lcom/android/app/viewcapture/ViewCapture$WindowListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda7;->f$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 5
    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda7;->f$1:Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda7;->f$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 2
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda7;->f$1:Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    .line 4
    iget-object v0, v0, Lcom/android/app/viewcapture/ViewCapture;->mListeners:Ljava/util/List;

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsActive:Z

    .line 14
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
