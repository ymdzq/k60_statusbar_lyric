.class Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mConfigs:[Lmiuix/animation/base/AnimConfig;

.field private mFolmeTouchRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public varargs constructor <init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mFolmeTouchRef:Ljava/lang/ref/WeakReference;

    .line 10
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiuix/animation/base/AnimConfig;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mFolmeTouchRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/animation/controller/FolmeTouch;

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    if-nez p2, :cond_1

    .line 16
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiuix/animation/base/AnimConfig;

    .line 18
    invoke-static {v0, p0}, Lmiuix/animation/controller/FolmeTouch;->access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    .line 20
    goto :goto_1

    .line 23
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiuix/animation/base/AnimConfig;

    .line 24
    invoke-static {v0, p1, p2, p0}, Lmiuix/animation/controller/FolmeTouch;->access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 26
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 29
    return p0
    .line 30
.end method
