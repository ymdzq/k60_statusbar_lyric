.class public final Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDisplayId:I

.field public final mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayInsetsController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayInsetsController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;)V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;->mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    .line 12
    iput p2, p0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;->mDisplayId:I

    .line 14
    return-void
    .line 16
.end method
