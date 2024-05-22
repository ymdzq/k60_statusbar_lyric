.class public final Lcom/android/wm/shell/common/DisplayController$DisplayRecord;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public mInsetsState:Landroid/view/InsetsState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/InsetsState;

    .line 5
    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mInsetsState:Landroid/view/InsetsState;

    .line 10
    return-void
    .line 12
.end method
