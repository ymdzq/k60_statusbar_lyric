.class public final Landroidx/core/view/GestureDetectorCompat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 7
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    .line 2
    iget-object p0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
